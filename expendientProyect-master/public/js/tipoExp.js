let seleccionar = document.querySelector('select');

seleccionar.addEventListener('change', establecerTipo);

function establecerTipo() {
  let eleccion = seleccionar.value;

  if (tipo_expediente === 'Comision') {
    category = "comision";
  } else if (tipo_expediente === 'Servicio') {
    category = "servicio";
  } else if (tipo_expediente === 'Compra') {
    category = "compra";
  } else if (tipo_expediente === 'Ayuda') {
    category = "ayuda";
  }
}