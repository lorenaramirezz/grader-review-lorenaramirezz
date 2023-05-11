CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

set -e

files='find student-submission -name "ListExamples.java"'
for file in $files
do

    if [[ -f $file ]] && [[ $file == *ListExamples* ]]
    then
        #cp $ListExamples.java $grading-area
        echo "File found!"

    else
        echo 'Wrong file!'
        exit
    fi 
    done





# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
