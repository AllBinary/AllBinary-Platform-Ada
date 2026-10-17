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


package body org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package is

   procedure Initialize_Fields (This : in out MouseStrings'Class) is
   begin
      null;
      This.MOUSE_PRESSED := To_Unbounded_String ("mousePressed");
      This.MOUSE_RELEASED := To_Unbounded_String ("mouseReleased");
      This.MOUSE_CLICKED := To_Unbounded_String ("mouseClicked");
      This.MOUSE_DRAGGED := To_Unbounded_String ("mouseDragged");
      This.MOUSE_MOVED := To_Unbounded_String ("mouseMoved");
      This.MOUSE_PRESSED_LABEL := To_Unbounded_String ("MousePressed") & Java_Image (CommonSeps_Package.getInstance.COLON_SEP);
      This.MOUSE_RELEASED_LABEL := To_Unbounded_String ("MouseReleased") & Java_Image (CommonSeps_Package.getInstance.COLON_SEP);
      This.MOUSE_CLICKED_LABEL := To_Unbounded_String ("MouseClicked") & Java_Image (CommonSeps_Package.getInstance.COLON_SEP);
      This.MOUSE_DRAGGED_LABEL := To_Unbounded_String ("MouseDragged") & Java_Image (CommonSeps_Package.getInstance.COLON_SEP);
      This.MOUSE_MOVED_LABEL := To_Unbounded_String ("MouseMoved") & Java_Image (CommonSeps_Package.getInstance.COLON_SEP);
   end Initialize_Fields;

   procedure Initialize (This : in out MouseStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MouseStrings_Access is
      This : constant MouseStrings_Access := new MouseStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return MouseStrings_Access is
   begin
        return MouseStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant MouseStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := MouseStrings_Package.Create;

end org.allbinary.graphics.j2me.workarea.tools.MouseStrings_Package;


