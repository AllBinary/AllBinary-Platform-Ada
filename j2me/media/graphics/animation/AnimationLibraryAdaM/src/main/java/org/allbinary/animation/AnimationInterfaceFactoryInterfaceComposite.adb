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


package body org.allbinary.animation.AnimationInterfaceFactoryInterfaceComposite_Package is

   procedure Initialize_Fields (This : in out AnimationInterfaceFactoryInterfaceComposite'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AnimationInterfaceFactoryInterfaceComposite'Class; basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.animationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface_Access_Array_Access) return AnimationInterfaceFactoryInterfaceComposite_Access is
      This : constant AnimationInterfaceFactoryInterfaceComposite_Access := new AnimationInterfaceFactoryInterfaceComposite;
   begin
      AnimationInterfaceFactoryInterfaceComposite_Package.Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out AnimationInterfaceFactoryInterfaceComposite; instanceId : Integer) return Animation_Access is
   begin
        return NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end getInstance;

   function getAnimationInterfaceFactoryInterfaceArray (This : in out AnimationInterfaceFactoryInterfaceComposite) return AnimationInterfaceFactoryInterface_Access_Array_Access is
   begin
        return This.animationInterfaceFactoryInterfaceArray;
   end getAnimationInterfaceFactoryInterfaceArray;

   procedure setInitialScale (This : in out AnimationInterfaceFactoryInterfaceComposite; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out AnimationInterfaceFactoryInterfaceComposite; instanceId : Integer) is
      Java_Result : constant Animation_Access := AnimationInterfaceFactoryInterfaceComposite'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.AnimationInterfaceFactoryInterfaceComposite_Package;


