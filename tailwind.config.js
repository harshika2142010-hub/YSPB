/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        study: {
          bg: '#0c1015',
          sidebar: '#0f141b',
          surface: '#141b22',
          card: '#18212a',
          hover: '#1f2b37',
          border: '#24313d',
          borderLight: '#314152',
          muted: '#8b9bb4',
        },
        sage: {
          50: '#f2f7f4',
          100: '#e1ede4',
          200: '#c4dbcb',
          300: '#9ec3aa',
          400: '#7da68d', // primary muted sage
          500: '#5c886d',
          600: '#466c55',
          700: '#395644',
          800: '#2f4538',
          900: '#283a30',
          glow: 'rgba(125, 166, 141, 0.16)',
        }
      },
      fontFamily: {
        sans: [
          'Inter',
          '-apple-system',
          'BlinkMacSystemFont',
          '"Segoe UI"',
          'Roboto',
          'sans-serif',
        ],
        mono: [
          'JetBrains Mono',
          'Fira Code',
          'monospace',
        ]
      }
    },
  },
  plugins: [],
}
