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


with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package; use org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;
with org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package; use org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package;
with android.app.Activity_Package; use android.app.Activity_Package;
with android.app.Activity_Package_References;
with org.allbinary.android.input.VirtualKeyboard_Package; use org.allbinary.android.input.VirtualKeyboard_Package;
with org.allbinary.android.input.VirtualKeyboard_Package_References;

package body org.allbinary.android.input.VirtualKeyboardFactory_Package is

   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;
   package VirtualKeyboardAPI1_Package renames Standard.org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;
   package VirtualKeyboardAPI3_Package renames Standard.org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package;
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   function "=" (Left, Right : Activity_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   function "=" (Left, Right : Activity_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   function "=" (Left, Right : Activity_Access_Array_Access_Array) return Boolean renames android.app.Activity_Package_References."=";
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Activity_Access_Array_Access_Array_Access) return Boolean renames android.app.Activity_Package_References."=";
   subtype VirtualKeyboard_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access;
   function "=" (Left, Right : VirtualKeyboard_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   subtype VirtualKeyboard_Access_Array is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array;
   function "=" (Left, Right : VirtualKeyboard_Access_Array) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   subtype VirtualKeyboard_Access_Array_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboard_Access_Array_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   subtype VirtualKeyboard_Access_Array_Access_Array is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboard_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   subtype VirtualKeyboard_Access_Array_Access_Array_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboard_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboard_Package_References."=";
   procedure Initialize_Fields (This : in out VirtualKeyboardFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out VirtualKeyboardFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return VirtualKeyboardFactory_Access is
      This : constant VirtualKeyboardFactory_Access := new VirtualKeyboardFactory;
   begin
      VirtualKeyboardFactory_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (activity_Param : access Activity_Package.Activity'Class) is
      activity : constant Activity_Access := Activity_Access (activity_Param);
      SDK_VERSION : Integer;
   begin
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) <= (2) then
            VirtualKeyboardFactory_Package.virtualKeyboard := VirtualKeyboardAPI1_Package.Create (activity);
        else
            VirtualKeyboardFactory_Package.virtualKeyboard := VirtualKeyboardAPI3_Package.Create (activity);
        end if;
   end init;

   function getInstance return VirtualKeyboard_Access is
   begin
        return VirtualKeyboard_Access (VirtualKeyboardFactory_Package.virtualKeyboard);
   end getInstance;

begin
   null;
   virtualKeyboard := VirtualKeyboard_Access (VirtualKeyboard_Package.NULL_VIRTUAL_KEYBOARD);

end org.allbinary.android.input.VirtualKeyboardFactory_Package;


