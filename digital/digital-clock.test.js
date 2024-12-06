const { JSDOM } = require('jsdom');
const { TextEncoder, TextDecoder } = require('util');

// Polyfill TextEncoder and TextDecoder
global.TextEncoder = TextEncoder;
global.TextDecoder = TextDecoder;

// Your updateClock function
function updateClock() {
  const now = new Date();
  let hours = now.getHours();
  const meridiem = hours >= 12 ? "PM" : "AM";
  hours = hours % 12 || 12;
  hours = hours.toString().padStart(2, '0');
  const minutes = now.getMinutes().toString().padStart(2, '0');
  const seconds = now.getSeconds().toString().padStart(2, '0');
  const timeString = `${hours}:${minutes}:${seconds} ${meridiem}`;
  document.getElementById("clock").textContent = timeString;
}

// Jest test case
describe('updateClock', () => {
  beforeAll(() => {
    const dom = new JSDOM('<!DOCTYPE html><p id="clock"></p>');
    global.document = dom.window.document;
  });

  it('should update clock element with current time', () => {
    // Mock Date object
    const mockDate = new Date(2023, 3, 1, 14, 30, 45);
    jest.spyOn(global, 'Date').mockImplementation(() => mockDate);

    // Call the function
    updateClock();

    // Get the updated content of the clock element
    const clockContent = document.getElementById("clock").textContent;

    // Assert the expected result
    expect(clockContent).toBe("02:30:45 PM");
  });
});
