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


with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.view.ViewPosition_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.view.ViewPositionFactoryInterface_Package;

package body org.allbinary.view.ViewPositionFactory_Package is

   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   function "=" (Left, Right : ViewPositionBase_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   procedure Initialize_Fields (This : in out ViewPositionFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ViewPositionFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ViewPositionFactory_Access is
      This : constant ViewPositionFactory_Access := new ViewPositionFactory;
   begin
      ViewPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out ViewPositionFactory) return ViewPositionBase_Access is
   begin
        return ViewPosition_Package.getInstanceD;
   end getInstance;

end org.allbinary.view.ViewPositionFactory_Package;


