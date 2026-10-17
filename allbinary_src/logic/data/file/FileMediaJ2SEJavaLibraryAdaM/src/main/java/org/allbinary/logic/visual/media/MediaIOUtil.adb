--  Generated Code Do Not Modify


package body org.allbinary.logic.visual.media.MediaIOUtil_Package is

   procedure Initialize_Fields (This : in out MediaIOUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MediaIOUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MediaIOUtil_Access is
      This : constant MediaIOUtil_Access := new MediaIOUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return MediaIOUtil_Access is
   begin
        return MediaIOUtil_Package.instance;
   end getInstance;

   function getReaderFormatNames (This : in out MediaIOUtil) return Unbounded_String_Array_Access is
   begin
        return ImageIO_Package.getReaderFormatNames;
   end getReaderFormatNames;

   function getWriterFormatNames (This : in out MediaIOUtil) return Unbounded_String_Array_Access is
   begin
        return ImageIO_Package.getWriterFormatNames;
   end getWriterFormatNames;

   procedure getInstance is
      Java_Result : constant MediaIOUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getReaderFormatNames (This : in out MediaIOUtil) is
      Java_Result : constant Unbounded_String_Array_Access := MediaIOUtil'Class (This).getReaderFormatNames;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getReaderFormatNames;

   procedure getWriterFormatNames (This : in out MediaIOUtil) is
      Java_Result : constant Unbounded_String_Array_Access := MediaIOUtil'Class (This).getWriterFormatNames;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWriterFormatNames;

begin
   null;
   instance := MediaIOUtil_Package.Create;

end org.allbinary.logic.visual.media.MediaIOUtil_Package;


