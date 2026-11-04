-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with android.view.View_Package; use android.view.View_Package;
with org.allbinary.android.view.BaseViewWrapper_Package;

package body org.allbinary.android.view.ViewWrapper_Package is

   subtype View_Access is android.view.View_Package_References.View_Access;
   function "=" (Left, Right : View_Access) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array is android.view.View_Package_References.View_Access_Array;
   function "=" (Left, Right : View_Access_Array) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access;
   function "=" (Left, Right : View_Access_Array_Access) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access_Array is android.view.View_Package_References.View_Access_Array_Access_Array;
   function "=" (Left, Right : View_Access_Array_Access_Array) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access_Array_Access;
   function "=" (Left, Right : View_Access_Array_Access_Array_Access) return Boolean renames android.view.View_Package_References."=";
   procedure Initialize_Fields (This : in out ViewWrapper'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ViewWrapper'Class; view_Param : access View_Package.View'Class) is
      view : constant View_Access := View_Access (view_Param);
   begin
      BaseViewWrapper_Package.Initialize (This);
      Initialize_Fields (This);
        This.view := view;
   end Initialize;

   function Create (view_Param : access View_Package.View'Class) return ViewWrapper_Access is
      This : constant ViewWrapper_Access := new ViewWrapper;
   begin
      ViewWrapper_Package.Initialize (This.all, view_Param);
      return This;
   end Create;

   procedure invalidate (This : in out ViewWrapper) is
   begin
        This.view.invalidate;
   end invalidate;

   procedure postInvalidate (This : in out ViewWrapper) is
   begin
        This.view.postInvalidate;
   end postInvalidate;

end org.allbinary.android.view.ViewWrapper_Package;


