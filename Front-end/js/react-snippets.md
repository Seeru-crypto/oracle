# React snippets!

#### Filtering and mapping examle with json data

```javascript
cosnt Menubase = [
    {
      label: "hello",
      index: 1,
    },
    {
      label: "hello again",
      index: 2,
    }
];

menuBase
    .filter((item) => !(item.security === 'private' && !AuthenticationService.isAuthenticated()))
    .map((item) => {
        if (item.label === 'Language') return item;
        const url = `/${i18n.language}${item.url}`;
        const command = (e: MenuItemCommandParams) => {
            e.originalEvent.preventDefault();
            if (e.item.url) history.push(e.item.url);
          };
        return { ...item, url, command };
    }),
```
