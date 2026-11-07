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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.IndexedAnimation_Package_References;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package; use org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package;

package body org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package is

   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   function "=" (Left, Right : IndexedAnimation_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   function "=" (Left, Right : IndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   procedure Initialize_Fields (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        This.basicAnimationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return SimultaneousCompoundIndexAnimationInterfaceFactory_Access is
      This : constant SimultaneousCompoundIndexAnimationInterfaceFactory_Access := new SimultaneousCompoundIndexAnimationInterfaceFactory;
   begin
      SimultaneousCompoundIndexAnimationInterfaceFactory_Package.Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; instanceId : Integer) return Animation_Access is
      size : Integer;
      animationInterfaceArray : IndexedAnimation_Access_Array_Access;
      index : Integer;
   begin
        size := This.basicAnimationInterfaceFactoryInterfaceArray'Length;
        animationInterfaceArray := new IndexedAnimation_Access_Array'(0 .. (size) - 1 => null);
        for index in 0 .. (size) - 1 loop
            animationInterfaceArray (index) := IndexedAnimation_Access (This.basicAnimationInterfaceFactoryInterfaceArray (index).getInstance (instanceId));
        end loop;
        return SimultaneousCompoundIndexAnimationInterfaceFactory'Class (This).getOrCreate (animationInterfaceArray);
   end getInstance;

   function getOrCreate (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; animationInterfaceArray : IndexedAnimation_Access_Array_Access) return Animation_Access is
   begin
        return Animation_Access (SimultaneousCompoundIndexAnimation_Package.Create (animationInterfaceArray, This.animationBehaviorFactory.getOrCreateInstance));
   end getOrCreate;

   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory) return AnimationInterfaceFactoryInterface_Access_Array_Access is
   begin
        return This.basicAnimationInterfaceFactoryInterfaceArray;
   end getBasicAnimationInterfaceFactoryInterfaceArray;

   procedure setInitialScale (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := SimultaneousCompoundIndexAnimationInterfaceFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getOrCreate (This : in out SimultaneousCompoundIndexAnimationInterfaceFactory; animationInterfaceArray : IndexedAnimation_Access_Array_Access) is
      Java_Result : constant Animation_Access := SimultaneousCompoundIndexAnimationInterfaceFactory'Class (This).getOrCreate (animationInterfaceArray => animationInterfaceArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrCreate;

end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory_Package;


