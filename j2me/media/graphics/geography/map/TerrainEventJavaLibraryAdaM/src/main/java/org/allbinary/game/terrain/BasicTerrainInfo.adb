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


with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;

package body org.allbinary.game.terrain.BasicTerrainInfo_Package is

   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   procedure Initialize_Fields (This : in out BasicTerrainInfo'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTerrainInfo'Class; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
   begin
      Initialize_Fields (This);
        This.angle := angle;
   end Initialize;

   function Create (angle_Param : access Angle_Package.Angle'Class) return BasicTerrainInfo_Access is
      This : constant BasicTerrainInfo_Access := new BasicTerrainInfo;
   begin
      BasicTerrainInfo_Package.Initialize (This.all, angle_Param);
      return This;
   end Create;

   function getAngle (This : in out BasicTerrainInfo) return Angle_Access is
   begin
        return This.angle;
   end getAngle;

   procedure setAngle (This : in out BasicTerrainInfo; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
   begin
        This.angle := angle;
   end setAngle;

begin
   null;
   NULL_BASIC_TERRAIN_INFO := BasicTerrainInfo_Package.Create (AngleFactory_Package.getInstance.NOT_ANGLE);

end org.allbinary.game.terrain.BasicTerrainInfo_Package;


