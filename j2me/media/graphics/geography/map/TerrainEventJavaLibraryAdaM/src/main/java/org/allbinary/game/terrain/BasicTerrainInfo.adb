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


package body org.allbinary.game.terrain.BasicTerrainInfo_Package is

   procedure Initialize_Fields (This : in out BasicTerrainInfo'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTerrainInfo'Class; angle : Angle_Access) is
   begin
      Initialize_Fields (This);
        This.angle := angle;
   end Initialize;

   function Create (angle : Angle_Access) return BasicTerrainInfo_Access is
      This : constant BasicTerrainInfo_Access := new BasicTerrainInfo;
   begin
      Initialize (This.all, angle);
      return This;
   end Create;

   function getAngle (This : in out BasicTerrainInfo) return Angle_Access is
   begin
        return This.angle;
   end getAngle;

   procedure setAngle (This : in out BasicTerrainInfo; angle : Angle_Access) is
   begin
        This.angle := angle;
   end setAngle;

   procedure getAngle (This : in out BasicTerrainInfo) is
      Java_Result : constant Angle_Access := BasicTerrainInfo'Class (This).getAngle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAngle;

begin
   null;
   NULL_BASIC_TERRAIN_INFO := BasicTerrainInfo_Package.Create (AngleFactory_Package.getInstance.NOT_ANGLE);

end org.allbinary.game.terrain.BasicTerrainInfo_Package;


