module.exports = {
  title: 'Hello VuePress',
  description: 'Just playing around',
  themeConfig: {
    sidebar: ['/'],
  },
  plugins: [
    [
      'component-docgen',
      {
        rootDir: '/Users/vk-tech/gt/sc-prog-repos/ptclient/components/',
      },
    ],
  ],
}
