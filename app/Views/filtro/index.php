<div class="container">
	<h3>Filtro de Valores</h3>
	<div class="alert alert-success" style="display: none;">
		
	</div>
	<br><br>
  <a id="btnViewIndicadores" class="btn btn-info" href ="<?php echo(base_url().'/'); ?>" >Volver a Vista UF</a>
  <br>
  <hr>
  <div class="container alert alert-info"> Presionar el botón filtrar luego de haber buscado por indicador y/o el año para que la tabla quede filtrada
   y luego podrá darle al botón ver gráfica ya que la gráfica funciona con la data filtrada de la tabla</div>
 
	<!-- <button id="btnAdd" class="btn btn-success">Filtro de Indicadores</button> -->
  <div class="row">
    <div class="col-md-2 mb-3">
      <label>Indicador</label>
      <select class ="form-control" id="indicadorSelector" name='indicador'> 
        <option value =''>Seleccione</option>
        <option value ="uf">uf</option>
        <option value ="ivp">ivp</option>
        <option value ="dolar">dolar</option>
        <option value ="dolar_intercambio">dolar_intercambio</option>
        <option value ="euro">euro</option>
        <option value ="ipc">ipc</option>
        <option value ="utm">utm</option>
        <option value ="imacec">imacec</option>
        <option value ="tpm">tpm</option>
        <option value ="libra_cobre">libra_cobre</option>
        <option value ="tasa_desempleo">tasa_desempleo</option>
        <option value ="bitcoin">bitcoin</option>
      </select>
    </div>
    <div class="col-md-2 mb-3">
      <label>Año</label>
      <select class ="form-control" id="year" name='year'> 
      </select>
      <!-- <input class="form-control" date="year" name="year" id="year"> -->
    </div>
    <div class="col-md-1 mb-3">
      <button id="btnSearch" class="btn btn-success" style="margin-top:22px;">Buscar</button>
    </div>
    <div id="div_button_ver_grafica" class="col-md-1 mb-3" style="display:none;">
      <button id="btnGraph" class="btn btn-primary" style="margin-top:22px;">Ver Gráfica</button>
    </div>
  </div>
  <div id = "row_chart" class ="row" style ="display:none">
  </div>
  <div class="row mt-3" id ="div_filter" style="display:none">
    <div class="col-md-2 mb-3">
      <label>Fecha Inicio</label>
      <input class="form-control" type="date" id='date_start' name="date_start" placeholder="dd/mm/yyyy" value="">
    </div>
    <div class="col-md-2 mb-3">
      <label>Fecha Fin</label>
      <input class="form-control" type="date" id='date_end' name="date_end" placeholder="dd/mm/yyyy" value="">
    </div>
    <div class="col-md-3 mb-3">
      <button id="btnFilter" class="btn btn-warning" style="margin-top:22px;">Filtrar</button>
      <button id="btnClear" class="btn btn-default" style="margin-top:22px;">Limpiar</button>
    </div>
  </div>
	<table id="filterTable"class="table table-bordered table-responsive" style="margin-top: 22px;">
		<thead>
			<tr>
				<td>Codigo</td>
				<td>Nombre</td>
				<td>Unidad Medida</td>
				<td>Fecha</td>
				<td>Valor</td>
			</tr>
		</thead>
		<tbody id="showdata">
			
		</tbody>
	</table>
  <div id="div_chart"class="col-md-12" style="display:none;">
    <canvas id="myChart"></canvas>
  </div>
</div>


<script>
	
  $(document).ready(function() {
    let labels = []
    let data = []
    let label = ''
    let myChart
    /*Botón para limpiar la tabla y los campos de entrada*/
    $('#btnClear').click(function(event) {
      $('#filterTable tbody tr').remove(); /*remover todos los elementos del body de la tabla*/
      $('#indicadorSelector').val('') /*Limpiar selector indicador*/
      $('#year').val('') /*limpiar selector año*/
      $('#date_start').val('') /*limpiar fecha de inicio*/
      $('#date_end').val('') /*limpiar fecha fin*/
    })
    /*Botón para filtrar la tabla*/
    $('#btnFilter').click(function(event) {
      if ($('#date_start').val() == '') { /*Validación, si la fecha esta vacia entonces lanza una alerta*/
        alert('Debe seleccionar la fecha inicial')
        return false
      }
      if ($('#date_end').val() == '') { /*Validación, si la fecha esta vacia entonces lanza una alerta*/
        alert('Debe seleccionar la fecha final')
        return false
      }
      /*si la fecha no se encuentra en el rango entonces la remuevo de la tabla*/
      $('#filterTable > tbody  > tr').each(function(index, tr) { 
        if ($(tr).find('.date').text() >= $('#date_start').val() && $(tr).find('.date').text() <= $('#date_end').val()){
        } else {
          $(tr).remove()
        }
      });
      labels = []
      data = []
      title = $('#indicadorSelector').val()+' '+$('#year').val()
      $('#filterTable > tbody > tr').find('.valor').each (function() {
        data.push($(this).text())
        // data.push($(this).text)
      })
      $('#filterTable > tbody > tr').find('.date').each (function() {
        labels.push($(this).text())
      })
      drawGraph(title, labels, data)
      /*Ocultamos la gráfica*/
      $('#div_chart').fadeOut(500)
      /*Mostramos la tabla*/
      $('#filterTable').fadeIn(500)
      /*Cambiamos el texto del botón*/
      $('#btnTable').text('Ver Gráfica')
      /*Cambiamos el id del botón*/
      $('#btnTable').attr('id', 'btnGraph')
    })
    /*Botón para ver la gráfica*/
      $(document).on('click', '#btnGraph', function(event) {
        /*Ocultamos la tabla*/
      $('#filterTable').fadeOut(500)
      /*Mostramos la gráfica*/
      $('#div_chart').fadeIn(500)
      /*Cambiamos el texto del botón*/
      $('#btnGraph').text('Ver tabla')
      /*Cambiamos el id del botón*/
      $('#btnGraph').attr('id', 'btnTable')
    })
    /*Botón para ver la tabla*/
    $(document).on('click', '#btnTable', function(event) {
      /*Ocultamos la gráfica*/
      $('#div_chart').fadeOut(500)
      /*Mostramos la tabla*/
      $('#filterTable').fadeIn(500)
      /*Cambiamos el texto del botón*/
      $('#btnTable').text('Ver Gráfica')
      /*Cambiamos el id del botón*/
      $('#btnTable').attr('id', 'btnGraph')
    })
    /*Botón para Buscar la tabla*/
    $('#btnSearch').click(function(event) {
      event.preventDefault() /*Para evitar cualquier acción submit del botón*/
      let url = 'https://mindicador.cl/api' /*URL DE LA API*/
      if( $('#indicadorSelector').val() != '') {  /*Si el indicador no es vacio entonces le anexo el indicador seleccionado*/
        url += '/'+$('#indicadorSelector').val()
      }
      if ($('#year').val() != '') { /*Si el año no es vacio entonces le anexo el año seleccionado a la URL*/
        url += '/'+$('#year').val()
      }
      if ($('#indicadorSelector').val() == '') {/* Validación, Si el indicador es vacio entonces lanzo una alerta*/
        alert('Debe seleccionar un indicador')
        return false
      }
      /*COMIENZO DEL AJAX PARA LLAMAR A LA API*/
      $.ajax({
            url:url,
            method:"GET",
            dataType: 'JSON',
            success:function(result){
              $('#div_button_ver_grafica').fadeIn(500)
              /*MUESTRO EL DIV DEL FILTRO CON UNA ANIMACIÓN fade*/
              $('#div_filter').fadeIn(500)
              /*Inicializo html para luego hacer el append en la tabla*/
              let html = ''
              /*Iteración del resultado arrojado por la API*/
              let acum = ''
              /*array para almacenar los labels para pintar la gráfica*/
              labels = []
              /*array para almacenar la data para pintar la gráfica*/
              data = []
              $.each(result.serie, function(index, val) {
                /*LLAMO A UNA FUNCIÓN PARA DARLE FORMATO A LA FECHA Y LUEGO HACER LA COMPARACIÓN PARA EL FILTRO*/
                date_formated = formatDate(val.fecha)
                /*Agrego los valores en los TD para luego agregarlos a la tabla*/
                acum += '("'+result.codigo+'","'+result.nombre+'","'+result.unidad_medida+'","'+val.fecha+'",'+val.valor+'),'
                html +='<tr>'+
									'<td>'+result.codigo+'</td>'+
									'<td>'+result.nombre+'</td>'+
									'<td>'+result.unidad_medida+'</td>'+
									'<td class="date">'+date_formated+'</td>'+
									'<td class="valor">'+val.valor+'</td>'+
							    '</tr>';
                /*Hacemos push de los datos a los arrays correspondientes*/
                labels.push(date_formated)
                data.push(val.valor)
					      })
                /* Definimos el nobmre que tendrá la gráfica */
                title = $('#indicadorSelector').val()+' '+$('#year').val()
                drawGraph(title, labels, data)
					      $('#showdata').html(html);
            },
            error: function( req, status, err ) {
            console.log( 'something went wrong', status, err );
            } 
        })
        /*OBTENGO EL AÑO SELECCIONADO Y LO AGREGO COMO VALOR MINIMO EN LAS FECHAS*/
        let filter_year = $('#year option:selected').val()
        $('#date_start').attr('min',filter_year+'-01-01')
        $('#date_start').attr('max',filter_year+'-12-31')
        $('#date_start').val(filter_year+'-01-01')
        $('#date_end').attr('min',filter_year+'-01-01')
        $('#date_end').attr('max',filter_year+'-12-31')
        $('#date_end').val(filter_year+'-12-31')
    })
    $('#indicadorSelector').change(function(event) { /*ACCION CADA VEZ QUE CAMBIA DE INDICADOR*/ 
      $('#year').empty();
      var year = 0
      /*CASE PARA SABER DONDE COMIENZAN LOS AÑOS DE CADA indicador*/
      switch ($(this).val()) {
        case 'uf':
          year = 1977
          break;
        case 'ivp':
          year = 1990
          break;
        case 'dolar':
          year = 1984
          break;
        case 'dolar_intercambio':
          year = 1988
          break;
        case 'euro':
          year = 1999
          break;
        case 'ipc':
          year = 1928
          break;
        case 'utm':
          year = 1990
          break;
        case 'imacec':
          year = 1997
          break;
        case 'tpm':
          year = 2001
          break;
        case 'libra_cobre':
          year = 2012
          break;
        case 'tasa_desempleo':
          year = 2009
          break;  
        case 'bitcoin':
          year = 2009
          break;  
        default:
          break;
      }
      /*AGREGO COMO PRIMERA OPCIÓN SELECCIONE*/
      $("#year").append(new Option("Seleccione", ""));
      /*Iteración para llenar el selector los años */
      while (year <= new Date().getFullYear()) {
        $("#year").append(new Option(year, year)); 
        year += 1
      }
      var myVal = $('#year option:last').val();
      $('#year').val( myVal);
    })
  })
/* FUNCION PARA DARLE FORMATO A LA FECHA RECIBE COMO PARAMETRO LA FECHA */
  function formatDate(fecha) {
    var d = new Date(fecha), // PASA AL FORMATO DATE la fecha 
        month = '' + (d.getMonth() + 1), /*OBTENGO EL MES */
        day = '' + d.getDate(), /*OBTENGO EL DIA */
        year = d.getFullYear(); /*OBTENGO EL AÑO */

    if (month.length < 2) /*PARA AGREGAR LOS 0 SI ES MENOR de 2 digitos */
        month = '0' + month;
    if (day.length < 2) /*PARA AGREGAR LOS 0 SI ES MENOR de 2 digitos */
        day = '0' + day;
    /*RETORNO LA FECHA COMO 2021-09-02 */
    return [year, month, day].join('-');
  }
  function drawGraph(title, labels, data) {
    /*Obtenemos el div en el que dibujaremos nuestra gráfica*/
    $('#div_chart').children().remove();
    $('#div_chart').append('<canvas id="myChart"></canvas>');
    var ctx = document.getElementById('myChart').getContext('2d');
    /*Dibujamos nuestra gráfica con todos los valores definidos anteriormente*/
    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: [{
                label: title,
                data: data,
                backgroundColor: [
                    'rgba(54, 162, 235, 0.2)'
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: false
                }
            }
        }
    });
  }
</script>