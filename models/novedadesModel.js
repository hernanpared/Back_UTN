var pool = require("./bd");

async function getNovedades() {
  var query = "SELECT * FROM novedades ORDER BY id ASC";
  var rows = await pool.query(query);
  return rows;
}

async function insertNovedad(obj) {
  try {
    var query = "insert into novedades set ?";
    var rows = await pool.query(query, [obj]);
    return rows;
  } catch (error) {
    console.log(error);
    throw error;
  } // cierra catch
} //cierra insert

async function deleteNovedadeByID(id) {
  var query= 'delete from novedades where id =?';
  var rows = await pool.query(query,[id]);
  return rows;
  
}

async function getNovedadById(id) {
  var query = "select * from novedades where id = ? ";
  var rows = await pool.query(query, [id]);
  return rows[0];
}

/*para modificar UPDATE de los datos*/
async function modificarNovedadById(obj, id) {
  try {
      var query = "update novedades set ? where id=?";
      var rows = await pool.query(query, [obj, id]);
      return rows;
  } catch (error) {
      throw error;
  }
}


module.exports = { getNovedades, insertNovedad, deleteNovedadeByID, getNovedadById, modificarNovedadById };
