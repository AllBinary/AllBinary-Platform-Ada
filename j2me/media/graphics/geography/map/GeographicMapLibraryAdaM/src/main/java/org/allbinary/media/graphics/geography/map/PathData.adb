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


package body org.allbinary.media.graphics.geography.map.PathData_Package is

   procedure Initialize_Fields (This : in out PathData'Class) is
   begin
      null;
      This.OFFSET := 400;
   end Initialize_Fields;

   procedure Initialize (This : in out PathData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PathData_Access is
      This : constant PathData_Access := new PathData;
   begin
      PathData_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PathData_Access is
   begin
        return PathData_Package.instance;
   end getInstance;

begin
   null;
   instance := PathData_Package.Create;

end org.allbinary.media.graphics.geography.map.PathData_Package;


