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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.game.terrain.TerrainEvent_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out TerrainEvent'Class) is
   begin
      null;
      This.basicTerrainInfo := BasicTerrainInfo_Package.NULL_BASIC_TERRAIN_INFO;
   end Initialize_Fields;


   procedure Initialize (This : in out TerrainEvent'Class; basicTerrainInfo_Param : access Java_Object'Class) is
      basicTerrainInfo : constant Java_Object_Access := Java_Object_Access (basicTerrainInfo_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, basicTerrainInfo);
        Initialize_Fields (This);
        TerrainEvent'Class (This).setBasicTerrainInfo (This.basicTerrainInfo);
   end Initialize;

   function Create (basicTerrainInfo_Param : access Java_Object'Class) return TerrainEvent_Access is
      This : constant TerrainEvent_Access := new TerrainEvent;
   begin
      TerrainEvent_Package.Initialize (This.all, basicTerrainInfo_Param);
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

   procedure setBasicTerrainInfo (This : in out TerrainEvent; basicTerrainInfo_Param : access BasicTerrainInfo_Package.BasicTerrainInfo'Class) is
      basicTerrainInfo : constant BasicTerrainInfo_Access := BasicTerrainInfo_Access (basicTerrainInfo_Param);
   begin
        This.basicTerrainInfo := basicTerrainInfo;
   end setBasicTerrainInfo;

   procedure setBasicTerrainInfoForCircularStaticPool (This : in out TerrainEvent; basicTerrainInfo_Param : access BasicTerrainInfo_Package.BasicTerrainInfo'Class) is
      basicTerrainInfo : constant BasicTerrainInfo_Access := BasicTerrainInfo_Access (basicTerrainInfo_Param);
   begin
        This.basicTerrainInfo := basicTerrainInfo;
   end setBasicTerrainInfoForCircularStaticPool;

end org.allbinary.game.terrain.TerrainEvent_Package;


