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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.ag.life.Life_Package; use org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.ag.life.LifeVisitorInterface_Package; use org.allbinary.game.ag.life.LifeVisitorInterface_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package is

   package Life_Package renames Standard.org.allbinary.game.ag.life.Life_Package;
   package LifeVisitorInterface_Package renames Standard.org.allbinary.game.ag.life.LifeVisitorInterface_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;

   type LifeLayer is tagged;
   type LifeLayer_Access is access all LifeLayer'Class;
   type LifeLayer_Access_Array is array (Natural range <>) of LifeLayer_Access;
   type LifeLayer_Access_Array_Access is access all LifeLayer_Access_Array;

   type LifeLayer is new AllBinaryLayer and LifeVisitorInterface with null record;

   procedure Initialize (This : in out LifeLayer'Class);
   function Create return LifeLayer_Access;
   procedure paint (This : in out LifeLayer; graphics_Param : access Graphics'Class);
   procedure visit (This : in out LifeLayer; lifeInterface_Param : access Life'Class);

end org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package;


