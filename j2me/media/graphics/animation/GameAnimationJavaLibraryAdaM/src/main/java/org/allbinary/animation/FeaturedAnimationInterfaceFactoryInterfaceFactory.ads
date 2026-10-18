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
with org.allbinary.game.resource.FeaturedResourceFactory_Package; use org.allbinary.game.resource.FeaturedResourceFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.BasicAnimationInterfaceFactoryInterface_Package;

package org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package is

   package FeaturedResourceFactory_Package renames Standard.org.allbinary.game.resource.FeaturedResourceFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;

   type FeaturedAnimationInterfaceFactoryInterfaceFactory is tagged;
   type FeaturedAnimationInterfaceFactoryInterfaceFactory_Access is access all FeaturedAnimationInterfaceFactoryInterfaceFactory'Class;
   type FeaturedAnimationInterfaceFactoryInterfaceFactory_Access_Array is array (Natural range <>) of FeaturedAnimationInterfaceFactoryInterfaceFactory_Access;
   type FeaturedAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access is access all FeaturedAnimationInterfaceFactoryInterfaceFactory_Access_Array;
   type FeaturedAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of FeaturedAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access;
   type FeaturedAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array_Access is access all FeaturedAnimationInterfaceFactoryInterfaceFactory_Access_Array_Access_Array;

   type FeaturedAnimationInterfaceFactoryInterfaceFactory is new FeaturedResourceFactory with null record;
   INSTANCE : FeaturedAnimationInterfaceFactoryInterfaceFactory_Access;

   procedure Initialize (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory'Class);
   function Create return FeaturedAnimationInterfaceFactoryInterfaceFactory_Access;
   function getInstance return FeaturedAnimationInterfaceFactoryInterfaceFactory_Access;
   function getRectangle (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return Rectangle_Access;
   procedure getRectangle (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String);
   function getRectangleXY (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; x : Integer; y : Integer) return Rectangle_Access;
   procedure getRectangleXY (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String; x : Integer; y : Integer);
   function getProcedural (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return ProceduralAnimationInterfaceFactoryInterface_Access;
   procedure getProcedural (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String);
   function get (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return AnimationInterfaceFactoryInterface_Access;
   procedure get (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String);
   function getBasicAnimationInterfaceFactoryInstance (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String) return BasicAnimationInterfaceFactoryInterface_Access;
   procedure getBasicAnimationInterfaceFactoryInstance (This : in out FeaturedAnimationInterfaceFactoryInterfaceFactory; resource : Unbounded_String);

end org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;


