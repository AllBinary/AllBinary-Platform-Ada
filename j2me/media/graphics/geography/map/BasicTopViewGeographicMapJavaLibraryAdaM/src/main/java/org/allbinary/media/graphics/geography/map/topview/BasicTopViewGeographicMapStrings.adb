-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package is

   procedure Initialize_Fields (This : in out BasicTopViewGeographicMapStrings'Class) is
   begin
      null;
      This.DEFAULT := To_Unbounded_String ("Default");
      This.OTHER := To_Unbounded_String ("Other");
      This.WALL := To_Unbounded_String ("Wall");
      This.OFF_MAP := To_Unbounded_String ("OffMap");
      This.FLOOR := To_Unbounded_String ("Floor");
      This.DOOR := To_Unbounded_String ("Door");
      This.STAIRS_UP := To_Unbounded_String ("StairsUp");
      This.STAIRS_DOWN := To_Unbounded_String ("StairsDown");
   end Initialize_Fields;

   procedure Initialize (This : in out BasicTopViewGeographicMapStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicTopViewGeographicMapStrings_Access is
      This : constant BasicTopViewGeographicMapStrings_Access := new BasicTopViewGeographicMapStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicTopViewGeographicMapStrings_Access is
   begin
        return BasicTopViewGeographicMapStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant BasicTopViewGeographicMapStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := BasicTopViewGeographicMapStrings_Package.Create;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package;


