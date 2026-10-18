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
      MediaIOUtil_Package.Initialize (This.all);
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

begin
   null;
   instance := MediaIOUtil_Package.Create;

end org.allbinary.logic.visual.media.MediaIOUtil_Package;


