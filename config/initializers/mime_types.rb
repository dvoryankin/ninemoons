# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf


Rack::Mime::MIME_TYPES['.woff'] = 'application/x-font-woff'
Mime::Type.register "font/opentype",                  :otf
Mime::Type.register "application/x-font-woff",        :woff
Mime::Type.register "application/x-font-ttf",         :ttf
Mime::Type.register "application/vnd.ms-fontobject",  :eot
Mime::Type.register "image/svg+xml",                  :svg
