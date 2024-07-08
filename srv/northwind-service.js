// Import the cds facade object (https://cap.cloud.sap/docs/node.js/cds-facade)
const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
  const northwind = await cds.connect.to("northwind");

  this.on("getNorthwind", async (req) => {
    const result = await northwind.get("/Products");
    console.log(result);
    return result;
  });
});
