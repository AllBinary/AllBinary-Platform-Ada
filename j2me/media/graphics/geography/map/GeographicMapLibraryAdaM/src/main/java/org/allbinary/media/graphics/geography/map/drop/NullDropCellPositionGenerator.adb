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


package body org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package is

   procedure Initialize_Fields (This : in out NullDropCellPositionGenerator'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullDropCellPositionGenerator'Class) is
   begin
      BaseDropCellPositionGenerator_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullDropCellPositionGenerator_Access is
      This : constant NullDropCellPositionGenerator_Access := new NullDropCellPositionGenerator;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return NullDropCellPositionGenerator_Access is
   begin
        return NullDropCellPositionGenerator_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant NullDropCellPositionGenerator_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullDropCellPositionGenerator_Package.Create;

end org.allbinary.media.graphics.geography.map.drop.NullDropCellPositionGenerator_Package;


