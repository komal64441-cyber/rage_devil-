import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react-swc'
import singleFile from 'vite-plugin-singlefile'

// For GitHub Pages deployment
export default defineConfig({
  plugins: [react(), singleFile()],
  base: '/rage-devil/',
  build: {
    target: 'esnext',
    minify: 'terser',
  },
})
