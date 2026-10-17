--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.content.Context_Package; use android.content.Context_Package;
with android.view.View_Package; use android.view.View_Package;
with android.widget.Toast_Package; use android.widget.Toast_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.android.ToastUtil_Package is

   package Context_Package renames Standard.android.content.Context_Package;
   package View_Package renames Standard.android.view.View_Package;
   package Toast_Package renames Standard.android.widget.Toast_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ToastUtil is tagged;
   type ToastUtil_Access is access all ToastUtil'Class;
   type ToastUtil_Access_Array is array (Natural range <>) of ToastUtil_Access;
   type ToastUtil_Access_Array_Access is access all ToastUtil_Access_Array;

   type ToastUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ToastUtil_Access;

   procedure Initialize (This : in out ToastUtil'Class);
   function Create return ToastUtil_Access;
   function getInstance return ToastUtil_Access;
   procedure makeToast (This : in out ToastUtil; view_Param : access View_Package.View'Class; context_Param : access Context_Package.Context'Class; message : Unbounded_String; time : Integer);

end org.allbinary.android.ToastUtil_Package;


