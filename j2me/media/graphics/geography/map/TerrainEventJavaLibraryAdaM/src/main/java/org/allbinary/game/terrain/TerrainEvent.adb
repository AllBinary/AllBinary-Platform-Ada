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


package body org.allbinary.game.terrain.TerrainEvent_Package is

   procedure Initialize_Fields (This : in out TerrainEvent'Class) is
   begin
      null;
      This.basicTerrainInfo := BasicTerrainInfo_Package.NULL_BASIC_TERRAIN_INFO;
   end Initialize_Fields;


   procedure Initialize (This : in out TerrainEvent'Class; basicTerrainInfo : Java_Object_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, basicTerrainInfo);
        Initialize_Fields (This);
        This.setBasicTerrainInfo (This.basicTerrainInfo);
   end Initialize;

   function Create (basicTerrainInfo : Java_Object_Access) return TerrainEvent_Access is
      This : constant TerrainEvent_Access := new TerrainEvent;
   begin
      Initialize (This.all, basicTerrainInfo);
      return This;
   end Create;

   function toString (This : in out TerrainEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("TerrainEvent: " & ASCII.LF & ""));
        stringBuffer.append (To_Unbounded_String ("LayerInterface: "));
        stringBuffer.append (This.basicTerrainInfo.toString);
        return stringBuffer.toString;
   end toString;

   function getBasicTerrainInfo (This : in out TerrainEvent) return BasicTerrainInfo_Access is
   begin
        return This.basicTerrainInfo;
   end getBasicTerrainInfo;

   procedure setBasicTerrainInfo (This : in out TerrainEvent; basicTerrainInfo : BasicTerrainInfo_Access) is
   begin
        This.basicTerrainInfo := basicTerrainInfo;
   end setBasicTerrainInfo;

   procedure setBasicTerrainInfoForCircularStaticPool (This : in out TerrainEvent; basicTerrainInfo : BasicTerrainInfo_Access) is
   begin
        This.basicTerrainInfo := basicTerrainInfo;
   end setBasicTerrainInfoForCircularStaticPool;

   procedure toString (This : in out TerrainEvent) is
      Java_Result : constant Unbounded_String := TerrainEvent'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

   procedure getBasicTerrainInfo (This : in out TerrainEvent) is
      Java_Result : constant BasicTerrainInfo_Access := TerrainEvent'Class (This).getBasicTerrainInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBasicTerrainInfo;

end org.allbinary.game.terrain.TerrainEvent_Package;


