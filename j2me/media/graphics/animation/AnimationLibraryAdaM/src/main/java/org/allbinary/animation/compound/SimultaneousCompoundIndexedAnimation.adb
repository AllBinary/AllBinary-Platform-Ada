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


package body org.allbinary.animation.compound.SimultaneousCompoundIndexedAnimation_Package is

   procedure Initialize_Fields (This : in out SimultaneousCompoundIndexedAnimation'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SimultaneousCompoundIndexedAnimation'Class; animationInterfaceArray : Animation_Access_Array_Access; animationBehavior : AnimationBehavior_Access) is
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.animationInterfaceArray := animationInterfaceArray;
   end Initialize;

   function Create (animationInterfaceArray : Animation_Access_Array_Access; animationBehavior : AnimationBehavior_Access) return SimultaneousCompoundIndexedAnimation_Access is
      This : constant SimultaneousCompoundIndexedAnimation_Access := new SimultaneousCompoundIndexedAnimation;
   begin
      SimultaneousCompoundIndexedAnimation_Package.Initialize (This.all, animationInterfaceArray, animationBehavior);
      return This;
   end Create;

   procedure setFrame (This : in out SimultaneousCompoundIndexedAnimation; frameIndex : Integer) is
      indexedAnimation : IndexedAnimation_Access;
      index : Integer;
   begin
        indexedAnimation := null;
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            indexedAnimation := IndexedAnimation_Access (This.animationInterfaceArray (index));
            indexedAnimation.setFrame (frameIndex);
        end loop;
   end setFrame;

   function getFrame (This : in out SimultaneousCompoundIndexedAnimation) return Integer is
      indexedAnimation : IndexedAnimation_Access;
   begin
        indexedAnimation := IndexedAnimation_Access (This.animationInterfaceArray (0));
        return indexedAnimation.getFrame;
   end getFrame;

   function getSize (This : in out SimultaneousCompoundIndexedAnimation) return Integer is
      indexedAnimation : IndexedAnimation_Access;
   begin
        indexedAnimation := IndexedAnimation_Access (This.animationInterfaceArray (0));
        return indexedAnimation.getSize;
   end getSize;

   procedure previousFrame (This : in out SimultaneousCompoundIndexedAnimation) is
      indexedAnimation : IndexedAnimation_Access;
      index : Integer;
   begin
        indexedAnimation := null;
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            indexedAnimation := IndexedAnimation_Access (This.animationInterfaceArray (index));
            indexedAnimation.previousFrame;
        end loop;
   end previousFrame;

   procedure setSequence (This : in out SimultaneousCompoundIndexedAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out SimultaneousCompoundIndexedAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   --  throws Exception
   procedure nextFrame (This : in out SimultaneousCompoundIndexedAnimation) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).nextFrame;
        end loop;
   end nextFrame;

   procedure paintXY (This : in out SimultaneousCompoundIndexedAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
      size : Integer;
      index : Integer;
   begin
        size := This.animationInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            This.animationInterfaceArray (index).paintXY (graphics, x, y);
        end loop;
   end paintXY;

   procedure paintThreedXYZ (This : in out SimultaneousCompoundIndexedAnimation; graphics : Graphics_Access; x : Integer; y : Integer; z : Integer) is
      size : Integer;
      index : Integer;
   begin
        size := This.animationInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            This.animationInterfaceArray (index).paintThreedXYZ (graphics, x, y, z);
        end loop;
   end paintThreedXYZ;

   function getAnimationInterfaceArray (This : in out SimultaneousCompoundIndexedAnimation) return Animation_Access_Array_Access is
   begin
        return This.animationInterfaceArray;
   end getAnimationInterfaceArray;

   procedure setAnimationInterfaceArray (This : in out SimultaneousCompoundIndexedAnimation; animationInterfaceArray : Animation_Access_Array_Access) is
   begin
        This.animationInterfaceArray := animationInterfaceArray;
   end setAnimationInterfaceArray;

end org.allbinary.animation.compound.SimultaneousCompoundIndexedAnimation_Package;


