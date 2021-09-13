<div class="container">
	<h3>Valores UF Guardados</h3>
	<div class="alert alert-success" style="display: none;">
		
	</div>
	<button id="btnAdd" class="btn btn-info">Agregar Nueva Uf</button>
	<br><br>
	<a id="btnViewIndicadores" class="btn btn-success" href ="<?php echo(base_url().'/filtro'); ?>" >Ver Indicadores Generales</a>
	<table class="table table-bordered table-responsive" style="margin-top: 20px;">
		<thead>
			<tr>
				<td>Id</td>
				<td>Codigo</td>
				<td>Nombre</td>
				<td>Unidad Medida</td>
				<td>Fecha</td>
				<td>Valor</td>
			
				<td>Acción</td>
			</tr>
		</thead>
		<tbody id="showdata">
			
		</tbody>
	</table>
</div>

<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Ventana</h4>
      </div>
      <div class="modal-body">
        	<form id="myForm" action="" method="post" class="form-horizontal">
        		<input type="hidden" name="id" value="0">
        		<div class="form-group">
        			<label for="codigo" class="label-control col-md-4">Codigo Uf</label>
        			<div class="col-md-8">
					<input type="text" name="codigo" class="form-control">
        			</div>

					
        		</div>
				<div class="form-group">
        			<label for="nombre" class="label-control col-md-4">Nombre de la UF</label>
        			<div class="col-md-8">
        				<input type="text" name="nombre" class="form-control">
        			</div>
        		</div>
				<div class="form-group">
        			<label for="unidadmedida" class="label-control col-md-4">Unidad Medida UF</label>
        			<div class="col-md-8">
        				<input type="text" name="unidadmedida" class="form-control">
        			</div>
        		</div>
				<div class="form-group">
        			<label for="fecha" class="label-control col-md-4">Fecha</label>
        			<div class="col-md-8">
        				<input type="date" name="fecha" class="form-control">
        			</div>
        		</div>
				<div class="form-group">
        			<label for="valor" class="label-control col-md-4">Valor</label>
        			<div class="col-md-8">
        				<input type="number" name="valor" class="form-control">
        			</div>
        		</div>
        		
        	</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        <button type="button" id="btnSave" class="btn btn-primary">Guardar Cambios</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div id="deleteModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Borrar Definitivo</h4>
      </div>
      <div class="modal-body">
        	Quieres borrar definitivo este registro?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        <button type="button" id="btnDelete" class="btn btn-danger">Borrar</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>
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
	$(function(){
		showAllUf();

		//Add New
		$('#btnAdd').click(function(){
			$('#myModal').modal('show');
			$('#myModal').find('.modal-title').text('Agregar nueva Uf');
			$('#myForm').attr('action', '<?php echo base_url() ?>/Uf/addUf');
		});


		$('#btnSave').click(function(){
			var url = $('#myForm').attr('action');
			var data = $('#myForm').serialize();
			//validate form
			var codigo = $('input[name=codigo]');
			var nombre = $('input[name=nombre]');
			var unidadmedida = $('input[name=unidadmedida]');
			var fecha = $('input[name=fecha]');
			var valor = $('input[name=valor]');
			
			var result = '';
			if(codigo.val()==''){
				codigo.parent().parent().addClass('has-error');
			}else{
				codigo.parent().parent().removeClass('has-error');
				result +='1';
			}
			if(nombre.val()==''){
				nombre.parent().parent().addClass('has-error');
			}else{
				nombre.parent().parent().removeClass('has-error');
				result +='2';
			}
			if(unidadmedida.val()==''){
				unidadmedida.parent().parent().addClass('has-error');
			}else{
				unidadmedida.parent().parent().removeClass('has-error');
				result +='3';
			}


			if(fecha.val()==''){
				fecha.parent().parent().addClass('has-error');
			}else{
				fecha.parent().parent().removeClass('has-error');
				result +='4';
			}


			if(valor.val()==''){
				valor.parent().parent().addClass('has-error');
			}else{
				valor.parent().parent().removeClass('has-error');
				result +='5';
			}
      console.log(result)
			if(result=='12345'){
				$.ajax({
					type: 'post',
					method: 'post',
					url: url,
					data: data,
					async: false,
					dataType: 'json',
					success: function(response){
						if(response.success){
							$('#myModal').modal('hide');
							$('#myForm')[0].reset();
							if(response.type=='add'){
								var type = 'Agregada'
							}else if(response.type=='update'){
								var type ="Actualizada"
							}
							$('.alert-success').html('Uf '+type+' successfully').fadeIn().delay(4000).fadeOut('slow');
							showAllUf();
						}else{
							alert('Error');
						}
					},
					error: function(){
						alert('No se puede agregar');
					}
				});
			}
		});

		//edit
		$('#showdata').on('click', '.item-edit', function(){
			var id = $(this).attr('data');
			$('#myModal').modal('show');
			$('#myModal').find('.modal-title').text('Edit Uf');
			$('#myForm').attr('action', '<?php echo base_url() ?>/Uf/updateUf');
			$.ajax({
				type: 'POST',
				url: '<?php echo base_url() ?>/Uf/editUf',
				data: {id: id},
				async: false,
				dataType: 'json',
				success: function(data){
					$('input[name=codigo]').val(data.codigo);
					$('input[name=nombre]').val(data.nombre);
					$('input[name=unidadmedida]').val(data.unidadmedida);
					$('input[name=fecha]').val(formatDate(data.fecha));
					$('input[name=valor]').val(data.valor);
					$('input[name=id]').val(data.id);
				},
				error: function(){
					alert('No se puede editar');
				}
			});
		});

		//delete- 
		$('#showdata').on('click', '.item-delete', function(){
			var id = $(this).attr('data');
			$('#deleteModal').modal('show');
			//prevent previous handler - unbind()
			$('#btnDelete').unbind().click(function(){
				$.ajax({
					type: 'POST',
					async: false,
					url: '<?php echo base_url() ?>/Uf/deleteUf',
					data:{id:id},
					dataType: 'json',
					success: function(response){
						if(response.success){
							$('#deleteModal').modal('hide');
							$('.alert-success').html('Uf Borrada Correctamente').fadeIn().delay(4000).fadeOut('slow');
							showAllUf();
						}else{
							alert('Error');
						}
					},
					error: function(){
						alert('Error Borrando');
					}
				});
			});
		});



		//function
		function showAllUf(){
			$.ajax({
				type: 'post',
				url: '<?php echo base_url() ?>/Uf/showAllUf',
				async: false,
				dataType: 'json',
				success: function(data){

					var html = '';
					var i;
					for(i=0; i<data.length; i++){
					
						html +='<tr>'+
									'<td>'+data[i].id+'</td>'+
									'<td>'+data[i].codigo+'</td>'+
									'<td>'+data[i].nombre+'</td>'+
									'<td>'+data[i].unidadmedida+'</td>'+
									'<td>'+data[i].fecha+'</td>'+
									'<td>'+data[i].valor+'</td>'+
									
									'<td>'+
										'<a href="javascript:;" class="btn btn-info item-edit" data="'+data[i].id+'">Editar</a>'+
										'<a href="javascript:;" class="btn btn-danger item-delete" data="'+data[i].id+'" style="margin-left:1rem;">Borrar</a>'+
									'</td>'+
							    '</tr>';
					}
					$('#showdata').html(html);
				},
				error: function(){
					alert('No se puedieron traer datos');
				}
			});
		}
	});
</script>