-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package body org.allbinary.graphics.displayable.CanvasStrings_Package is

   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out CanvasStrings'Class) is
   begin
      null;
      This.CONSTRUCTOR := To_Unbounded_String ("MyCanvas::MyCanvas");
      This.PAUSE := To_Unbounded_String ("MyCanvas::pause");
      This.UN_PAUSE := To_Unbounded_String ("MyCanvas::unPause");
      This.SET_FULL_SCREEN_MODE := To_Unbounded_String ("setFullScreenMode");
      This.SIZE_CHANGED := To_Unbounded_String ("sizeChanged");
      This.SCALED_IMAGES := To_Unbounded_String ("scaledImages");
      This.PAINT := To_Unbounded_String ("paint");
      This.ON_DISPLAY_CHANGE_EVENT := To_Unbounded_String ("onDisplayChangeEvent");
      This.UPDATE_MEASUREMENT := To_Unbounded_String ("updateMeasurement");
      This.FD_WIDTH := To_Unbounded_String (" font/display width: ");
      This.FD_HEIGHT := To_Unbounded_String (" font/display height: ");
      This.EMPTY_CHILD_NAME_LIST := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
      This.ABOUT := To_Unbounded_String ("About");
      This.OPTIONS := To_Unbounded_String ("Options");
      This.FONT_ATLAS := To_Unbounded_String ("/font.png");
      This.OBJ_MODEL := To_Unbounded_String ("_obj");
      This.MD2_MODEL := To_Unbounded_String ("_md2");
      This.U_PNG := To_Unbounded_String (".png");
   end Initialize_Fields;

   procedure Initialize (This : in out CanvasStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CanvasStrings_Access is
      This : constant CanvasStrings_Access := new CanvasStrings;
   begin
      CanvasStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CanvasStrings_Access is
   begin
        return CanvasStrings_Access (CanvasStrings_Package.instance);
   end getInstance;

begin
   null;
   instance := CanvasStrings_Package.Create;

end org.allbinary.graphics.displayable.CanvasStrings_Package;


