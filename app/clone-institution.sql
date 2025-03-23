create table franklin.Institution like aropa.Institution;
insert into franklin.Institution (*) select * from aropa.Institution where instID = 27;

create table franklin.User like aropa.User;
insert into franklin.User select * from aropa.User where instID = 27;

create table franklin.Course like aropa.Course;
insert into franklin.Course select * from aropa.Course where instID = 27;

create table franklin.UserCourse like aropa.UserCourse;
insert into franklin.UserCourse select * from aropa.UserCourse where courseID in (select courseID from franklin.Course);

create table franklin.Assignment like aropa.Assignment;
insert into franklin.Assignment select * from aropa.Assignment where courseID in (select courseID from franklin.Course);

create table franklin.Rubric like aropa.Rubric;
insert into franklin.Rubric select * from aropa.Rubric where rubricID in (select rubricID from franklin.Assignment);

create table franklin.Reviewer like aropa.Reviewer;
insert into franklin.Reviewer select * from aropa.Reviewer where assmtID in (select assmtID from franklin.Assignment);

create table franklin.Author like aropa.Author;
insert into franklin.Author select * from aropa.Author where assmtID in (select assmtID from franklin.Assignment);

create table franklin.`Groups` like aropa.`Groups`;
insert into franklin.`Groups` select * from aropa.`Groups` where assmtID in (select assmtID from franklin.Assignment);

create table franklin.GroupUser like aropa.GroupUser;
insert into franklin.GroupUser select * from aropa.GroupUser where assmtID in (select assmtID from franklin.Assignment);

create table franklin.Extension like aropa.Extension;
insert into franklin.Extension select * from aropa.Extension where assmtID in (select assmtID from franklin.Assignment);

create table franklin.Essay like aropa.Essay;
insert into franklin.Essay select * from aropa.Essay where assmtID in (select assmtID from franklin.Assignment);

create table franklin.Overflow like aropa.Overflow;
insert into franklin.Overflow select * from aropa.Overflow where essayID in (select essayID from franklin.Essay);

create table franklin.Allocation like aropa.Allocation;
insert into franklin.Allocation select * from aropa.Allocation where assmtID in (select assmtID from franklin.Assignment);

create table franklin.Comment like aropa.Comment;
insert into franklin.Comment select * from aropa.Comment where allocID in (select allocID from franklin.Allocation);

create table franklin.ReviewFile like aropa.ReviewFile;
insert into franklin.ReviewFile select * from aropa.ReviewFile where allocID in (select allocID from franklin.Allocation);

create table franklin.ReviewFileOverflow like aropa.ReviewFileOverflow;
insert into franklin.ReviewFileOverflow select * from aropa.ReviewFileOverflow where reviewFileID in (select reviewFileID from franklin.ReviewFile);

create table franklin.AllocationAudit like aropa.AllocationAudit;
create table franklin.CommentAudit like aropa.CommentAudit;
create table franklin.EmailAlias like aropa.EmailAlias;
create table franklin.LastMod like aropa.LastMod;
create table franklin.MarkAudit like aropa.MarkAudit;
create table franklin.Participants like aropa.Participants;
create table franklin.Session like aropa.Session;
create table franklin.SessionAudit like aropa.SessionAudit;
create table franklin.Stream like aropa.Stream;
create table franklin.Superusers like aropa.Superusers;
create table franklin.Survey like aropa.Survey;
create table franklin.SurveyData like aropa.SurveyData;
