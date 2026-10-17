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

   procedure debugMetrics (This : in out FontDebugBase; currentFont_Param : access Font_Package.Font'Class; convertedTextSize : Float; displayMetrics_Param : access Java_Object'Class; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      currentFont : constant Font_Access := Font_Access (currentFont_Param);
      displayMetrics : constant Java_Object_Access := Java_Object_Access (displayMetrics_Param);
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
   begin
        null;
   end debugMetrics;

   procedure debugDpi (This : in out FontDebugBase; densityDpi : Integer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
   begin
        null;
   end debugDpi;

   procedure debugDimension (This : in out FontDebugBase; currentFont_Param : access Font_Package.Font'Class; convertedTextSize : Float; longestDimensionTotalPixels : Integer; stringBuffer_Param : access StringMaker_Package.StringMaker'Class) is
      currentFont : constant Font_Access := Font_Access (currentFont_Param);
      stringBuffer : constant StringMaker_Access := StringMaker_Access (stringBuffer_Param);
   begin
        null;
   end debugDimension;

begin
   null;
   instanceBase := FontDebugBase_Package.Create;

end org.allbinary.graphics.font.FontDebugBase_Package;


