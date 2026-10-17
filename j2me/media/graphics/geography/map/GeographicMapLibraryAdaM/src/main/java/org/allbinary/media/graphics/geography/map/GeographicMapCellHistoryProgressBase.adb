-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellHistoryProgressBase'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GeographicMapCellHistoryProgressBase_Access is
   begin
        return GeographicMapCellHistoryProgressBase_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GeographicMapCellHistoryProgressBase'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GeographicMapCellHistoryProgressBase_Access is
      This : constant GeographicMapCellHistoryProgressBase_Access := new GeographicMapCellHistoryProgressBase;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out GeographicMapCellHistoryProgressBase) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end init;

   function isAnyProgress (This : in out GeographicMapCellHistoryProgressBase) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isAnyProgress;

   procedure getInstance is
      Java_Result : constant GeographicMapCellHistoryProgressBase_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isAnyProgress (This : in out GeographicMapCellHistoryProgressBase) is
      Java_Result : constant Boolean := GeographicMapCellHistoryProgressBase'Class (This).isAnyProgress;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAnyProgress;

begin
   null;
   instance := GeographicMapCellHistoryProgressBase_Package.Create;

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgressBase_Package;


