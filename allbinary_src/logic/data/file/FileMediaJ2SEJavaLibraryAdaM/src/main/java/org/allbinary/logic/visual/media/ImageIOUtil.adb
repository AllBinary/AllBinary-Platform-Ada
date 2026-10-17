--  Generated Code Do Not Modify


package body org.allbinary.logic.visual.media.ImageIOUtil_Package is

   procedure Initialize_Fields (This : in out ImageIOUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageIOUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageIOUtil_Access is
      This : constant ImageIOUtil_Access := new ImageIOUtil;
   begin
      ImageIOUtil_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function read (file_Param : access AbFile'Class) return BufferedImage_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return ImageIO_Package.read (AbFileNativeUtil_Package.get (file));
   end read;

   --  throws Exception
   function write (renderedImage_Param : access RenderedImage'Class; name : Unbounded_String; file_Param : access AbFile'Class) return Boolean is
      renderedImage : RenderedImage_Access := RenderedImage_Access (renderedImage_Param);
      file : AbFile_Access := AbFile_Access (file_Param);
   begin
        return ImageIO_Package.write (renderedImage, name, AbFileNativeUtil_Package.get (file));
   end write;

   procedure read (file_Param : access AbFile'Class) is
      Java_Result : constant BufferedImage_Access := read (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end read;

   procedure write (renderedImage_Param : access RenderedImage'Class; name : Unbounded_String; file_Param : access AbFile'Class) is
      Java_Result : constant Boolean := write (renderedImage_Param, name, file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end write;

end org.allbinary.logic.visual.media.ImageIOUtil_Package;


