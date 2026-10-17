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


package body org.allbinary.input.automation.ImageOutputData_Package is

   procedure Initialize_Fields (This : in out ImageOutputData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageOutputData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageOutputData_Access is
      This : constant ImageOutputData_Access := new ImageOutputData;
   begin
      ImageOutputData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   SAVE_PATH := StringMaker_Package.Create.append (Java_Get_Property (To_Unbounded_String ("user.dir"))).appendchar (FilePathData_Package.getInstance.SEPARATORCHAR).append (To_Unbounded_String ("saves")).appendchar (FilePathData_Package.getInstance.SEPARATORCHAR).toString;

end org.allbinary.input.automation.ImageOutputData_Package;


