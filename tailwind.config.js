const colors = require('tailwindcss/colors')


module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
        white: '#000000',
        gray: '#333333',
    },
     screens: {
      'sm': '576px',
      'md': '960px',
    },
    extend: {},
  },
  variants:[],
  plugins: [],
}
