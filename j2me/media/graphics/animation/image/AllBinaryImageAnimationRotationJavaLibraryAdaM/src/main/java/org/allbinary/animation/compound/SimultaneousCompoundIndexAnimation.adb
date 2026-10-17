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


package body org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package is

   procedure Initialize_Fields (This : in out SimultaneousCompoundIndexAnimation'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SimultaneousCompoundIndexAnimation'Class; animationInterfaceArray : IndexedAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior'Class) is
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        IndexedAnimation_Package.Initialize (This, animationBehavior);
        Initialize_Fields (This);
        This.animationInterfaceArray := animationInterfaceArray;
   end Initialize;

   function Create (animationInterfaceArray : IndexedAnimation_Access_Array_Access; animationBehavior_Param : access AnimationBehavior'Class) return SimultaneousCompoundIndexAnimation_Access is
      This : constant SimultaneousCompoundIndexAnimation_Access := new SimultaneousCompoundIndexAnimation;
   begin
      SimultaneousCompoundIndexAnimation_Package.Initialize (This.all, animationInterfaceArray, animationBehavior_Param);
      return This;
   end Create;

   procedure setFrame (This : in out SimultaneousCompoundIndexAnimation; frameIndex : Integer) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).setFrame (frameIndex);
        end loop;
   end setFrame;

   function getFrame (This : in out SimultaneousCompoundIndexAnimation) return Integer is
   begin
        return This.animationInterfaceArray (0).getFrame;
   end getFrame;

   --  throws Exception
   function getAnimationSize (This : in out SimultaneousCompoundIndexAnimation) return Integer is
   begin
        return This.animationInterfaceArray (0).getAnimationSize;
   end getAnimationSize;

   function getSize (This : in out SimultaneousCompoundIndexAnimation) return Integer is
   begin
        return This.animationInterfaceArray (0).getSize;
   end getSize;

   procedure previousFrame (This : in out SimultaneousCompoundIndexAnimation) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).previousFrame;
        end loop;
   end previousFrame;

   --  throws Exception
   procedure nextFrame (This : in out SimultaneousCompoundIndexAnimation) is
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).nextFrame;
        end loop;
   end nextFrame;

   procedure setSequence (This : in out SimultaneousCompoundIndexAnimation; sequence : Integer_Array_Access) is
   begin
        null;
   end setSequence;

   function getSequence (This : in out SimultaneousCompoundIndexAnimation) return Integer_Array_Access is
   begin
        return PrimitiveIntUtil_Package.getArrayInstance;
   end getSequence;

   procedure paintXY (This : in out SimultaneousCompoundIndexAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).paintXY (graphics, x, y);
        end loop;
   end paintXY;

   procedure paintThreedXYZ (This : in out SimultaneousCompoundIndexAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer; z : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).paintThreedXYZ (graphics, x, y, z);
        end loop;
   end paintThreedXYZ;

   --  throws Exception
   procedure set (This : in out SimultaneousCompoundIndexAnimation; gl_Param : access GL'Class) is
      gl : GL_Access := GL_Access (gl_Param);
      index : Integer;
   begin
        index := This.animationInterfaceArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            This.animationInterfaceArray (index).set (gl);
        end loop;
   end set;

   function getAnimationInterfaceArray (This : in out SimultaneousCompoundIndexAnimation) return IndexedAnimation_Access_Array_Access is
   begin
        return This.animationInterfaceArray;
   end getAnimationInterfaceArray;

   procedure setAnimationInterfaceArray (This : in out SimultaneousCompoundIndexAnimation; animationInterfaceArray : IndexedAnimation_Access_Array_Access) is
   begin
        This.animationInterfaceArray := animationInterfaceArray;
   end setAnimationInterfaceArray;

end org.allbinary.animation.compound.SimultaneousCompoundIndexAnimation_Package;


