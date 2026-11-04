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


with android.app.Activity_Package; use android.app.Activity_Package;
with org.allbinary.android.activity.MidletActivityBase_Package; use org.allbinary.android.activity.MidletActivityBase_Package;
with org.allbinary.android.activity.SimpleProgressActivityInterface_Package; use org.allbinary.android.activity.SimpleProgressActivityInterface_Package;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.android.activity.MidletActivityBase_Package;

package body org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package is

   package MidletActivityBase_Package renames Standard.org.allbinary.android.activity.MidletActivityBase_Package;
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
   subtype SimpleProgressActivityInterface_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype SimpleProgressActivityInterface_Access_Array is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access_Array) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype SimpleProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype SimpleProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype SimpleProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype ProgressCanvas_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access;
   function "=" (Left, Right : ProgressCanvas_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array;
   function "=" (Left, Right : ProgressCanvas_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   subtype ProgressCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References."=";
   procedure Initialize_Fields (This : in out ProgressRunnable'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ProgressRunnable'Class; midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class) is
      midletActivity : constant Activity_Access := Activity_Access (midletActivity_Param);
      progressCanvas : constant ProgressCanvas_Access := ProgressCanvas_Access (progressCanvas_Param);
      midletActivity2 : MidletActivityBase_Access;
   begin
      ARunnable_Package.Initialize (This);
      Initialize_Fields (This);
        midletActivity2 := MidletActivityBase_Access (midletActivity);
        This.midletActivity := SimpleProgressActivityInterface_Access (midletActivity2);
        This.progressCanvas := progressCanvas;
   end Initialize;

   function Create (midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class) return ProgressRunnable_Access is
      This : constant ProgressRunnable_Access := new ProgressRunnable;
   begin
      ProgressRunnable_Package.Initialize (This.all, midletActivity_Param, progressCanvas_Param);
      return This;
   end Create;

   procedure run (This : in out ProgressRunnable) is
   begin
        null;
   end run;

end org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;


