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


package body org.allbinary.animation.compound.CompoundIndexedAnimation_Package is

   procedure Initialize_Fields (This : in out CompoundIndexedAnimation'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CompoundIndexedAnimation'Class; animationInterfaceArray : Animation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.animationInterfaceArray := animationInterfaceArray;
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (This.animationInterfaceArray'Length);
   end Initialize;

   function Create (animationInterfaceArray : Animation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return CompoundIndexedAnimation_Access is
      This : constant CompoundIndexedAnimation_Access := new CompoundIndexedAnimation;
   begin
      CompoundIndexedAnimation_Package.Initialize (This.all, animationInterfaceArray, animationBehavior_Param);
      return This;
   end Create;

   procedure setFrame (This : in out CompoundIndexedAnimation; index : Integer) is
      indexedAnimation : IndexedAnimation_Access;
   begin
        indexedAnimation := IndexedAnimation_Access (This.animationInterfaceArray (This.circularIndexUtil.getIndex));
        indexedAnimation.setFrame (index);
   end setFrame;

   function getFrame (This : in out CompoundIndexedAnimation) return Integer is
      indexedAnimation : IndexedAnimation_Access;
   begin
        indexedAnimation := IndexedAnimation_Access (This.animationInterfaceArray (This.circularIndexUtil.getIndex));
        return indexedAnimation.getFrame;
   end getFrame;

   function getSize (This : in out CompoundIndexedAnimation) return Integer is
      indexedAnimation : IndexedAnimation_Access;
   begin
        indexedAnimation := IndexedAnimation_Access (This.animationInterfaceArray (This.circularIndexUtil.getIndex));
        return indexedAnimation.getSize;
   end getSize;

   procedure previousFrame (This : in out CompoundIndexedAnimation) is
      indexedAnimation : IndexedAnimation_Access;
   begin
        indexedAnimation := IndexedAnimation_Access (This.animationInterfaceArray (This.circularIndexUtil.getIndex));
        indexedAnimation.previousFrame;
   end previousFrame;

   procedure setSequence (This : in out CompoundIndexedAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out CompoundIndexedAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   --  throws Exception
   procedure nextFrame (This : in out CompoundIndexedAnimation) is
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).nextFrame;
   end nextFrame;

   procedure paintXY (This : in out CompoundIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).paintXY (graphics, x, y);
   end paintXY;

   procedure paintThreedXYZ (This : in out CompoundIndexedAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer; z : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.animationInterfaceArray (This.circularIndexUtil.getIndex).paintThreedXYZ (graphics, x, y, z);
   end paintThreedXYZ;

   function getCurrentAnimation (This : in out CompoundIndexedAnimation) return IndexedAnimation_Access is
   begin
        return IndexedAnimation_Access (This.animationInterfaceArray (This.circularIndexUtil.getIndex));
   end getCurrentAnimation;

   procedure nextAnimation (This : in out CompoundIndexedAnimation) is
      frame : Integer;
   begin
        frame := This.getFrame;
        This.circularIndexUtil.next;
        This.setFrame (frame);
   end nextAnimation;

   procedure previousAnimation (This : in out CompoundIndexedAnimation) is
      frame : Integer;
   begin
        frame := This.getFrame;
        This.circularIndexUtil.previous;
        This.setFrame (frame);
   end previousAnimation;

   procedure setAnimation (This : in out CompoundIndexedAnimation; index : Integer) is
      frame : Integer;
   begin
        frame := This.getFrame;
        This.circularIndexUtil.setIndex (index);
        This.setFrame (frame);
   end setAnimation;

   function getAnimationInterfaceArray (This : in out CompoundIndexedAnimation) return Animation_Access_Array_Access is
   begin
        return This.animationInterfaceArray;
   end getAnimationInterfaceArray;

   procedure setAnimationInterfaceArray (This : in out CompoundIndexedAnimation; animationInterfaceArray : Animation_Access_Array_Access) is
   begin
        This.animationInterfaceArray := animationInterfaceArray;
   end setAnimationInterfaceArray;

   --  throws Exception
   procedure set (This : in out CompoundIndexedAnimation; gl_Param : access GL_Package.GL'Class) is
      gl : constant GL_Access := GL_Access (gl_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).set (gl);
        end loop;
   end set;

end org.allbinary.animation.compound.CompoundIndexedAnimation_Package;


