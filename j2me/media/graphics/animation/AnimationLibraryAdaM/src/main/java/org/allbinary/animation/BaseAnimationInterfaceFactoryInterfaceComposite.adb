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


with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;

package body org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package is

   procedure Initialize_Fields (This : in out BaseAnimationInterfaceFactoryInterfaceComposite'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BaseAnimationInterfaceFactoryInterfaceComposite'Class; basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.basicAnimationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
   end Initialize;

   function Create (basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access) return BaseAnimationInterfaceFactoryInterfaceComposite_Access is
      This : constant BaseAnimationInterfaceFactoryInterfaceComposite_Access := new BaseAnimationInterfaceFactoryInterfaceComposite;
   begin
      BaseAnimationInterfaceFactoryInterfaceComposite_Package.Initialize (This.all, basicAnimationInterfaceFactoryInterfaceArray);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; instanceId : Integer) return Animation_Access is
   begin
        return NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
   end getInstance;

   function getBasicAnimationInterfaceFactoryInterfaceArray (This : in out BaseAnimationInterfaceFactoryInterfaceComposite) return BasicAnimationInterfaceFactoryInterface_Access_Array_Access is
   begin
        return This.basicAnimationInterfaceFactoryInterfaceArray;
   end getBasicAnimationInterfaceFactoryInterfaceArray;

   procedure setBasicAnimationInterfaceFactoryInterfaceArray (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface_Access_Array_Access) is
   begin
        This.basicAnimationInterfaceFactoryInterfaceArray := basicAnimationInterfaceFactoryInterfaceArray;
   end setBasicAnimationInterfaceFactoryInterfaceArray;

   procedure setInitialScale (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out BaseAnimationInterfaceFactoryInterfaceComposite; instanceId : Integer) is
      Java_Result : constant Animation_Access := BaseAnimationInterfaceFactoryInterfaceComposite'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.BaseAnimationInterfaceFactoryInterfaceComposite_Package;


