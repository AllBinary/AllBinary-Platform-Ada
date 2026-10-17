--  Generated Code Do Not Modify


package body org.allbinary.graphics.font.FontDebugBase_Package is

   procedure Initialize_Fields (This : in out FontDebugBase'Class) is
   begin
      null;
      This.SET_FONT := To_Unbounded_String ("setFont");
   end Initialize_Fields;

   procedure Initialize (This : in out FontDebugBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FontDebugBase_Access is
      This : constant FontDebugBase_Access := new FontDebugBase;
   begin
      FontDebugBase_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FontDebugBase_Access is
   begin
        return FontDebugBase_Package.instanceBase;
   end getInstance;

   procedure debugMetrics (This : in out FontDebugBase; currentFont : Font_Access; convertedTextSize : Float; displayMetrics : Java_Object_Access; stringBuffer : StringMaker_Access) is
   begin
        null;
   end debugMetrics;

   procedure debugDpi (This : in out FontDebugBase; densityDpi : Integer; stringBuffer : StringMaker_Access) is
   begin
        null;
   end debugDpi;

   procedure debugDimension (This : in out FontDebugBase; currentFont : Font_Access; convertedTextSize : Float; longestDimensionTotalPixels : Integer; stringBuffer : StringMaker_Access) is
   begin
        null;
   end debugDimension;

begin
   null;
   instanceBase := FontDebugBase_Package.Create;

end org.allbinary.graphics.font.FontDebugBase_Package;


