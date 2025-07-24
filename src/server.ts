import app from './app';
// import { MikroORM } from '@mikro-orm/sqlite'; // or any other driver package

// import { RequestContext } from '@mikro-orm/core';
const PORT = process.env.PORT || 3000;

const startServer = async() => {
  try {

    // initialize the ORM, loading the config file dynamically
    app.use((req, res, next) => {
    // RequestContext.create(orm.em, next);
});

    app.listen(PORT, () => {
      console.log(`Server is running on port ${PORT}`);
    });
  } catch (error) {
    console.error('Failed to start server:', error);
  }
};

startServer();