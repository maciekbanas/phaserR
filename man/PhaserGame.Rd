% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PhaserGame.R
\name{PhaserGame}
\alias{PhaserGame}
\title{PhaserGame}
\description{
R6 class to create and manage a Phaser game within a Shiny application.
Provides methods for adding sprites, animations, images, backgrounds, controls, and collision handling.
}
\examples{

## ------------------------------------------------
## Method `PhaserGame$new`
## ------------------------------------------------

game <- PhaserGame$new(id = "my_game", width = 1024, height = 768)

## ------------------------------------------------
## Method `PhaserGame$ui`
## ------------------------------------------------

 game$ui()
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{id}}{Character. ID of the Game container. Used as the HTML element ID where the game canvas will be rendered.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-PhaserGame-new}{\code{PhaserGame$new()}}
\item \href{#method-PhaserGame-set_shiny_session}{\code{PhaserGame$set_shiny_session()}}
\item \href{#method-PhaserGame-ui}{\code{PhaserGame$ui()}}
\item \href{#method-PhaserGame-add_text}{\code{PhaserGame$add_text()}}
\item \href{#method-PhaserGame-add_player_sprite}{\code{PhaserGame$add_player_sprite()}}
\item \href{#method-PhaserGame-add_sprite_animation}{\code{PhaserGame$add_sprite_animation()}}
\item \href{#method-PhaserGame-add_image}{\code{PhaserGame$add_image()}}
\item \href{#method-PhaserGame-add_map}{\code{PhaserGame$add_map()}}
\item \href{#method-PhaserGame-add_player_controls}{\code{PhaserGame$add_player_controls()}}
\item \href{#method-PhaserGame-enable_terrain_collision}{\code{PhaserGame$enable_terrain_collision()}}
\item \href{#method-PhaserGame-add_static_sprite}{\code{PhaserGame$add_static_sprite()}}
\item \href{#method-PhaserGame-add_static_group}{\code{PhaserGame$add_static_group()}}
\item \href{#method-PhaserGame-add_collider}{\code{PhaserGame$add_collider()}}
\item \href{#method-PhaserGame-add_overlap}{\code{PhaserGame$add_overlap()}}
\item \href{#method-PhaserGame-add_sprite}{\code{PhaserGame$add_sprite()}}
\item \href{#method-PhaserGame-set_sprite_in_motion}{\code{PhaserGame$set_sprite_in_motion()}}
\item \href{#method-PhaserGame-clone}{\code{PhaserGame$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-new"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-new}{}}}
\subsection{Method \code{new()}}{
Create a PhaserGame object with the given configuration.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$new(id = "phaser_game", width = 800, height = 600)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{id}}{Character. ID of the Game container (defaults to "phaser_game").}

\item{\code{width}}{Numeric. Width of the Phaser canvas in pixels (defaults to 800).}

\item{\code{height}}{Numeric. Height of the Phaser canvas in pixels (defaults to 600).}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new PhaserGame object.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{game <- PhaserGame$new(id = "my_game", width = 1024, height = 768)
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-set_shiny_session"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-set_shiny_session}{}}}
\subsection{Method \code{set_shiny_session()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$set_shiny_session(session = shiny::getDefaultReactiveDomain())}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{session}}{Shiny session object (default: shiny::getDefaultReactiveDomain()).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-ui"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-ui}{}}}
\subsection{Method \code{ui()}}{
Load dependencies and initialize the Phaser game in the UI.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$ui()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
HTML tag list containing dependencies and initialization script.
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{ game$ui()
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_text"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_text}{}}}
\subsection{Method \code{add_text()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_text(text, id, x, y, style = list(fontSize = "22px"))}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_player_sprite"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_player_sprite}{}}}
\subsection{Method \code{add_player_sprite()}}{
Add a player sprite to the scene as an animated spritesheet.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_player_sprite(
  name,
  url,
  x,
  y,
  frameWidth,
  frameHeight,
  frameCount,
  frameRate
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{Character. Unique key for the sprite.}

\item{\code{url}}{Character. URL or relative path to the spritesheet image.}

\item{\code{x}}{Numeric. X-coordinate in pixels.}

\item{\code{y}}{Numeric. Y-coordinate in pixels.}

\item{\code{frameWidth}}{Numeric. Width of each frame in the spritesheet.}

\item{\code{frameHeight}}{Numeric. Height of each frame in the spritesheet.}

\item{\code{frameCount}}{Numeric. Total number of frames.}

\item{\code{frameRate}}{Numeric. Frames per second for the animation.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Invisible; sends a custom message to the client.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_sprite_animation"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_sprite_animation}{}}}
\subsection{Method \code{add_sprite_animation()}}{
Load a custom animation for any sprite previously added.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_sprite_animation(
  name,
  suffix,
  url,
  frameWidth,
  frameHeight,
  frameCount,
  frameRate
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{Character. Base key used in add_player_sprite or add_enemy_sprite.}

\item{\code{suffix}}{Character. Identifier for this animation (e.g. "move_left").}

\item{\code{url}}{Character. URL or path to the spritesheet.}

\item{\code{frameWidth}}{Numeric. Width of each frame.}

\item{\code{frameHeight}}{Numeric. Height of each frame.}

\item{\code{frameCount}}{Numeric. Number of frames in the spritesheet.}

\item{\code{frameRate}}{Numeric. Frames per second for playback.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Invisible; sends a custom message to the client.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_image"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_image}{}}}
\subsection{Method \code{add_image()}}{
Adds a static image to the Phaser scene.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_image(imageName, imageUrl, x, y)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{imageName}}{Character. Unique key to reference this image.}

\item{\code{imageUrl}}{Character. URL or path to the image file.}

\item{\code{x}}{Numeric. X-coordinate in pixels.}

\item{\code{y}}{Numeric. Y-coordinate in pixels.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Invisible; sends a custom message to the client.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_map"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_map}{}}}
\subsection{Method \code{add_map()}}{
Add a background (tilemap) layer from Tiled JSON + tileset image(s).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_map(mapKey, mapUrl, tilesetUrls, tilesetNames, layerName)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{mapKey}}{Character. Key for the tilemap JSON.}

\item{\code{mapUrl}}{Character. URL of the Tiled JSON file (relative to www/assets/).}

\item{\code{tilesetUrls}}{Character vector. URLs of tileset image files.}

\item{\code{tilesetNames}}{Character vector. Names of tilesets as defined in Tiled.}

\item{\code{layerName}}{Character. Name of the layer to render from Tiled.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Invisible; sends a custom message to the client.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_player_controls"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_player_controls}{}}}
\subsection{Method \code{add_player_controls()}}{
Enable movement controls (arrow keys) for a player sprite.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_player_controls(
  name,
  directions = c("left", "right", "down", "up"),
  speed = 200
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{Character. Name of the player sprite (as added via add_player_sprite).}

\item{\code{directions}}{Character vector. Directions to enable (defaults to c("left","right","down","up")).}

\item{\code{speed}}{Numeric. Movement speed in pixels/second (default: 200).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-enable_terrain_collision"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-enable_terrain_collision}{}}}
\subsection{Method \code{enable_terrain_collision()}}{
Enable terrain collision for a player sprite.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$enable_terrain_collision(name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{Character. Name of the player sprite (as added via add_player_sprite).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_static_sprite"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_static_sprite}{}}}
\subsection{Method \code{add_static_sprite()}}{
Adds a static sprite to the scene (non-animated).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_static_sprite(name, url, x, y)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{Character. Unique name of the sprite.}

\item{\code{url}}{Character. URL or path to the image file.}

\item{\code{x}}{Numeric. X-coordinate in pixels.}

\item{\code{y}}{Numeric. Y-coordinate in pixels.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_static_group"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_static_group}{}}}
\subsection{Method \code{add_static_group()}}{
Adds a static group to the scene (non-animated).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_static_group(input, name, url)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{Character. Unique name of the group.}

\item{\code{url}}{Character. URL or path to the image file.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_collider"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_collider}{}}}
\subsection{Method \code{add_collider()}}{
Adds a collider between two game objects.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_collider(object_one_name, object_two_name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{object_one_name}}{Character. Name of the first object.}

\item{\code{object_two_name}}{Character. Name of the second object.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_overlap"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_overlap}{}}}
\subsection{Method \code{add_overlap()}}{
Adds a collider between two game objects.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_overlap(
  object_one_name,
  object_two_name = NULL,
  group_name = NULL,
  callback_fun,
  input
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{object_one_name}}{Character. Name of the first object.}

\item{\code{object_two_name}}{Character. Name of the second object.}

\item{\code{group_name}}{Character. Name of the group.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-add_sprite"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-add_sprite}{}}}
\subsection{Method \code{add_sprite()}}{
Load a base spritesheet and create an "idle" animation.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$add_sprite(
  name,
  url,
  x,
  y,
  frameWidth,
  frameHeight,
  frameCount,
  frameRate
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{Character. Unique key for the sprite and its idle animation.}

\item{\code{url}}{Character. URL or path to the spritesheet image.}

\item{\code{x}}{Numeric. X-coordinate in pixels.}

\item{\code{y}}{Numeric. Y-coordinate in pixels.}

\item{\code{frameWidth}}{Numeric. Width of each frame.}

\item{\code{frameHeight}}{Numeric. Height of each frame.}

\item{\code{frameCount}}{Numeric. Number of frames in the spritesheet.}

\item{\code{frameRate}}{Numeric. Frames per second for the idle animation.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-set_sprite_in_motion"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-set_sprite_in_motion}{}}}
\subsection{Method \code{set_sprite_in_motion()}}{
Move all sprites of a given type along a vector for a set distance.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$set_sprite_in_motion(
  type,
  dirX,
  dirY,
  speed,
  distance,
  lag = distance/speed
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{type}}{Character. Key used in add_sprite().}

\item{\code{dirX}}{Numeric. Horizontal direction (-1 = left, +1 = right, 0 = none).}

\item{\code{dirY}}{Numeric. Vertical direction (-1 = up, +1 = down, 0 = none).}

\item{\code{speed}}{Numeric. Speed in pixels/second.}

\item{\code{distance}}{Numeric. Distance in pixels to travel before stopping.}

\item{\code{lag}}{Numeric. Optional delay before sending the command (defaults to distance/speed).}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-PhaserGame-clone"></a>}}
\if{latex}{\out{\hypertarget{method-PhaserGame-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{PhaserGame$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
