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


package body org.allbinary.graphics.color.BasicColorFactory_Package is

   procedure Initialize_Fields (This : in out BasicColorFactory'Class) is
   begin
      null;
      This.NULL_COLOR := This.createInstanceARGB (255, 255, 255, 255, To_Unbounded_String ("null color"));
      This.TAN := This.createInstance (16#E9D8B5#);
      This.SKIN_PINK := This.createInstance (16#FDCECE#);
      This.RED := This.createInstanceAN (BasicColorUtil_Package.getInstance.ALPHA, 16#FF0000#, To_Unbounded_String ("red"));
      This.LIGHT_RED := This.createInstanceAN (BasicColorUtil_Package.getInstance.ALPHA, 16#FFA0A0#, To_Unbounded_String ("light red"));
      This.DARK_GREEN := This.createInstance (16#00FF00#);
      This.GREEN := This.createInstanceAN (BasicColorUtil_Package.getInstance.ALPHA, 16#00DD00#, To_Unbounded_String ("green"));
      This.LIGHT_GREEN := This.createInstance (16#007700#);
      This.PURPLE := This.createInstanceAN (BasicColorUtil_Package.getInstance.ALPHA, 16#400040#, To_Unbounded_String ("purple"));
      This.BLUE := This.createInstanceAN (BasicColorUtil_Package.getInstance.ALPHA, 16#0000FF#, To_Unbounded_String ("blue"));
      This.LIGHT_BLUE := This.createInstance (16#00aaff#);
      This.VERY_LIGHT_BLUE := This.createInstance (16#000033#);
      This.PUCE := This.createInstance (16#FF00AA#);
      This.AQUA := This.createInstance (16#00FFFF#);
      This.YELLOW := This.createInstanceAN (BasicColorUtil_Package.getInstance.ALPHA, 16#FFFF00#, To_Unbounded_String ("yellow"));
      This.PINK := This.createInstance (16#FF00FF#);
      This.BLACK := This.createInstanceAN (BasicColorUtil_Package.getInstance.ALPHA, 16#000000#, To_Unbounded_String ("black"));
      This.GREY := This.createInstanceAN (BasicColorUtil_Package.getInstance.ALPHA, 16#AAAAAA#, To_Unbounded_String ("grey"));
      This.LIGHT_GREY := This.createInstance (16#C0C0C0#);
      This.DARK_GREY := This.createInstance (16#404040#);
      This.ORANGE := This.createInstance (16#e07718#);
      This.BROWN := This.createInstance (16#956B00#);
      This.WHITE := This.createInstance (16#FFFFFF#);
      This.TRANSPARENT_COLOR := This.createInstanceAN (16#00000000#, 16#000000#, StringUtil_Package.getInstance.EMPTY_STRING);
      This.TRANSPARENT_GREY := This.createInstanceAN (16#52000000#, 16#ECECEC#, StringUtil_Package.getInstance.EMPTY_STRING);
      This.TRANSPARENT_BLACK := This.createInstanceAN (16#52000000#, 16#000000#, StringUtil_Package.getInstance.EMPTY_STRING);
      This.TRANSPARENT_RED := This.createInstanceAN (16#52000000#, 16#FF0000#, StringUtil_Package.getInstance.EMPTY_STRING);
      This.CLEAR_COLOR := This.BLACK;
      This.BORDER_COLOR := This.WHITE;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicColorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicColorFactory_Access is
      This : constant BasicColorFactory_Access := new BasicColorFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicColorFactory_Access is
   begin
        return BasicColorFactory_Package.instance;
   end getInstance;

   function createInstance (This : in out BasicColorFactory; value : Integer) return BasicColor_Access is
   begin
        return BasicColor_Package.Create (BasicColorUtil_Package.getInstance.ALPHA, value, StringUtil_Package.getInstance.EMPTY_STRING);
   end createInstance;

   function createInstanceA (This : in out BasicColorFactory; alphaValue : Integer; value : Integer) return BasicColor_Access is
   begin
        return BasicColor_Package.Create (alphaValue, value, StringUtil_Package.getInstance.EMPTY_STRING);
   end createInstanceA;

   function createInstanceAN (This : in out BasicColorFactory; alphaValue : Integer; value : Integer; name : Unbounded_String) return BasicColor_Access is
   begin
        return BasicColor_Package.Create (alphaValue, value, name);
   end createInstanceAN;

   function createInstanceARGB (This : in out BasicColorFactory; alphaValue : Integer; r : Integer; g : Integer; b : Integer; name : Unbounded_String) return BasicColor_Access is
      ALPHA_MASK : Integer;
   begin
        ALPHA_MASK := 16#FF000000#;
        return BasicColor_Package.Create (alphaValue, ((((Java_And ((Java_Shift_Left (alphaValue, 24)), ALPHA_MASK))) + ((Java_And ((Java_Shift_Left (r, 16)), 16#00FF0000#)))) + ((Java_And ((Java_Shift_Left (g, 8)), 16#0000FF00#)))) + ((Java_And (b, 16#000000FF#))), StringUtil_Package.getInstance.EMPTY_STRING);
   end createInstanceARGB;

   procedure getInstance is
      Java_Result : constant BasicColorFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createInstance (This : in out BasicColorFactory; value : Integer) is
      Java_Result : constant BasicColor_Access := BasicColorFactory'Class (This).createInstance (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstance;

   procedure createInstanceA (This : in out BasicColorFactory; alphaValue : Integer; value : Integer) is
      Java_Result : constant BasicColor_Access := BasicColorFactory'Class (This).createInstanceA (alphaValue, value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstanceA;

   procedure createInstanceAN (This : in out BasicColorFactory; alphaValue : Integer; value : Integer; name : Unbounded_String) is
      Java_Result : constant BasicColor_Access := BasicColorFactory'Class (This).createInstanceAN (alphaValue, value, name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstanceAN;

   procedure createInstanceARGB (This : in out BasicColorFactory; alphaValue : Integer; r : Integer; g : Integer; b : Integer; name : Unbounded_String) is
      Java_Result : constant BasicColor_Access := BasicColorFactory'Class (This).createInstanceARGB (alphaValue, r, g, b, name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstanceARGB;

begin
   null;
   instance := BasicColorFactory_Package.Create;

end org.allbinary.graphics.color.BasicColorFactory_Package;


