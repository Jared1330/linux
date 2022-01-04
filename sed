Замените первое вхождение регулярного выражения в каждой строке файла:
sed 's/{{regex}}/{{replace}}/' {{filename}}

Замените все вхождения расширенного регулярного выражения в файле:
sed -r 's/{{regex}}/{{replace}}/g' {{filename}}

Замените все вхождения строки в файле, перезаписав файл (т.е. на месте):
sed -i 's/{{find}}/{{replace}}/g' {{filename}}

Заменить только строки, соответствующие шаблону line_pattern:
sed '/{{line_pattern}}/s/{{find}}/{{replace}}/' {{filename}}

Добавить строчку "my-services", на 123 строку файла info.json
sed -i '123a "my-services",' /usr/share/nginx/html/brand/info.json

Заменить __I18N_HASH__ на значение переменной окружения CI_COMMIT_REF_NAME в файле environment.prod.ts
sed -i "s|__I18N_HASH__|${CI_COMMIT_SHA}|"  src/environments/environment.prod.ts

Change from 123 to {"id":"123"}
cat file.txt | sed -e 's/^/{"id":"/' -e 's/$/"}/'
