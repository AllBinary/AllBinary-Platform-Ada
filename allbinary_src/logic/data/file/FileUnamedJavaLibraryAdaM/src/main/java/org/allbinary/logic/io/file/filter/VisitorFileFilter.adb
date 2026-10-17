--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.logic.io.file.filter.VisitorFileFilter_Package is

   procedure Initialize_Fields (This : in out VisitorFileFilter'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out VisitorFileFilter'Class; booleanVisitorInterface : VisitorInterface_Access) is
   begin
      Initialize_Fields (This);
        This.booleanVisitorInterface := booleanVisitorInterface;
   end Initialize;

   function Create (booleanVisitorInterface : VisitorInterface_Access) return VisitorFileFilter_Access is
      This : constant VisitorFileFilter_Access := new VisitorFileFilter;
   begin
      VisitorFileFilter_Package.Initialize (This.all, booleanVisitorInterface);
      return This;
   end Create;

   function accept_Id (This : in out VisitorFileFilter; file : File_Access) return Boolean is
      abFile : AbFile_Access;
      isFileAcceptable : Boolean;
   begin
        abFile := FileWrapperUtil_Package.wrapFile (file);
        isFileAcceptable := (Boolean (This.booleanVisitorInterface.visit (abFile))).booleanValue;
        return (isFileAcceptable) or else (file.isDirectory);
   end accept_Id;

   function accept_Id (This : in out VisitorFileFilter; file : AbFile_Access) return Boolean is
      isFileAcceptable : Boolean;
   begin
        isFileAcceptable := (Boolean (This.booleanVisitorInterface.visit (file))).booleanValue;
        return (isFileAcceptable) or else (file.isDirectory);
   end accept_Id;

   procedure accept_Id (This : in out VisitorFileFilter; file : File_Access) is
      Java_Result : constant Boolean := VisitorFileFilter'Class (This).accept_Id (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end accept_Id;

   procedure accept_Id (This : in out VisitorFileFilter; file : AbFile_Access) is
      Java_Result : constant Boolean := VisitorFileFilter'Class (This).accept_Id (file);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end accept_Id;

end org.allbinary.logic.io.file.filter.VisitorFileFilter_Package;


