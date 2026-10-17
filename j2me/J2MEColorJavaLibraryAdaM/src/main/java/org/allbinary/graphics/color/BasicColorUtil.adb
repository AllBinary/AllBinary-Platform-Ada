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


package body org.allbinary.graphics.color.BasicColorUtil_Package is

   procedure Initialize_Fields (This : in out BasicColorUtil'Class) is
   begin
      null;
      This.ZERO_ARRAY := new BasicColor_Access_Array'(0 .. (0) - 1 => null);
      This.ALPHA := 16#FF000000#;
      This.isAlpha := True;
      This.ffOpaque := True;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicColorUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicColorUtil_Access is
      This : constant BasicColorUtil_Access := new BasicColorUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicColorUtil_Access is
   begin
        return BasicColorUtil_Package.instance;
   end getInstance;

   function getRGB (This : in out BasicColorUtil; red : Integer; green : Integer; blue : Integer) return Integer is
      value : Integer;
   begin
        value := 0;
        if This.isAlpha then
            if This.ffOpaque then
                value := This.ALPHA;
            end if;
        end if;
        value := Java_Or ((Java_Shift_Left (red, 16)), value);
        value := Java_Or ((Java_Shift_Left (green, 8)), value);
        value := Java_Or (blue, value);
        return value;
   end getRGB;

   function getARGB (This : in out BasicColorUtil; alphaValue : Integer; r : Integer; g : Integer; b : Integer) return Integer is
   begin
        return ((((Java_And ((Java_Shift_Left (alphaValue, 24)), This.ALPHA))) + ((Java_And ((Java_Shift_Left (r, 16)), 16#00FF0000#)))) + ((Java_And ((Java_Shift_Left (g, 8)), 16#0000FF00#)))) + ((Java_And (b, 16#000000FF#)));
   end getARGB;

   function get (This : in out BasicColorUtil; alphaValue : Integer; color : Integer) return Integer is
   begin
        return ((Java_And ((Java_Shift_Left (alphaValue, 24)), This.ALPHA))) + (color);
   end get;

   function invert (This : in out BasicColorUtil; color : Integer) return Integer is
   begin
        return Java_Or (((16#FFFFFF#) - (color)), This.ALPHA);
   end invert;

   procedure getInstance is
      Java_Result : constant BasicColorUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getRGB (This : in out BasicColorUtil; red : Integer; green : Integer; blue : Integer) is
      Java_Result : constant Integer := BasicColorUtil'Class (This).getRGB (red, green, blue);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRGB;

   procedure getARGB (This : in out BasicColorUtil; alphaValue : Integer; r : Integer; g : Integer; b : Integer) is
      Java_Result : constant Integer := BasicColorUtil'Class (This).getARGB (alphaValue, r, g, b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getARGB;

   procedure get (This : in out BasicColorUtil; alphaValue : Integer; color : Integer) is
      Java_Result : constant Integer := BasicColorUtil'Class (This).get (alphaValue, color);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure invert (This : in out BasicColorUtil; color : Integer) is
      Java_Result : constant Integer := BasicColorUtil'Class (This).invert (color);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end invert;

begin
   null;
   instance := BasicColorUtil_Package.Create;

end org.allbinary.graphics.color.BasicColorUtil_Package;


