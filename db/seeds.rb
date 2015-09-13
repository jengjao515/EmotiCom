############################Seed Emojis
counter = 600
while counter < 638
	Emotion.create(image_url: "../emojis/1f" + counter.to_s + ".png")
	counter += 1
end
