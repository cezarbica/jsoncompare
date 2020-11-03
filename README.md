Source code for [jsoncompare.com](jsoncompare.com).

I just needed a cleaned up version of the tool for internal use.
Feel free to reuse it as i kept the origina licensing model.


## # install node packages
docker-compose run --rm jsoncompare npm run install-all

## # build the app
docker-compose run --rm jsoncompare npm run build

## # clean built app
docker-compose run --rm jsoncompare npm run clean

## # start the container, will expose http://localhost:5001/
docker-compose up -d

## # other tasks
docker-compose run --rm jsoncompare sh
docker-compose exec jsoncompare sh 

pm2 status
pm2 kill

## # see available npm scripts
docker-compose exec jsoncompare npm run

## API is disabled!!!
 ``POST https://jsoncompare.com/api/save`` - saves current application state on S3.
 A body should include 3 keys:
 - ``simple`` *string* - base64-encoded value of the Simple tab
 - ``batch`` *string[]* - an array of base64-encoded values for the Batch tab
 - ``diff`` *object* - data forthe  Diff tab with keys "left" (base64-encoded value of the left side editor) and "right" (base64-encoded value of the  right side editor).

