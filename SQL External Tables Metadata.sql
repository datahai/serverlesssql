select et.name as TableName,
et.location as TableLocation,
ef.name as FileFormatName,
ef.format_type as FileFormatType,
es.name as DataSourceName,
es.location as DataSourceLocation
from sys.external_tables et
inner join sys.external_file_formats ef on ef.file_format_id = et.file_format_id
inner join sys.external_data_sources es on es.data_source_id = et.data_source_id