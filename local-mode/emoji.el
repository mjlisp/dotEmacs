;;; emoji.el --- Input method for emoji

;; Copyright (C) 2015 Chris Zheng.

;; Author: Chris Zheng <chriszheng99@gmail.com>
;; Created: 2015-09-01
;; Version: 20150901
;; X-Original-Version: 0.1
;; Keywords: Emoji, input method

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; Define an input method for Emoji.

;;; Installation:

;; Make sure to place `emoji.el' somewhere in the load-path and
;; add `(require 'emoji)' to init file.

;;; Code:

(register-input-method
 "emoji" "UTF-8" 'quail-use-package
 "😊" "Emoji input method.")

(require 'quail)

(quail-define-package
 "emoji" "UTF-8" "😊" t
 "An Emoji input method." nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
 (":face:" ["😄" "😃" "😀" "😊" "☺" "😉" "😍" "😘" "😚" "😙"
	    "😜" "😝" "😛" "😳" "😁" "😔" "😌" "😒" "😞" "😣"
	    "😂" "😭" "😪" "😥" "😰" "😅" "😓" "😩" "😫" "😨"
	    "😱" "😠" "😡" "😤" "😖" "😆" "😋" "😷" "😎" "😴"
	    "😵" "😲" "😟" "😦" "😧" "😈" "👿" "😮" "😬" "😐"
	    "😕" "😯" "😶" "😇" "😏" "😑"])
 (":human:" ["👲" "👳" "👮" "👷" "💂" "👶" "👦" "👧" "👨" "👩"
	     "👴" "👵" "👱" "👼" "👸"])
 (":cat:" ["😺" "😸" "😻" "😽" "😼" "🙀" "😿" "😹" "😾"])
 (":animal:" ["👹" "👺" "🙈" "🙉" "🙊" "💀" "👽" "🐶" "🐺" "🐱"
	      "🐭" "🐹" "🐰" "🐸" "🐯" "🐨" "🐻" "🐷" "🐽" "🐮"
	      "🐗" "🐵" "🐒" "🐴" "🐑" "🐘" "🐼" "🐧" "🐦" "🐤"
	      "🐥" "🐣" "🐔" "🐍" "🐢" "🐛" "🐝" "🐜" "🐞" "🐌"
	      "🐙" "🐚" "🐠" "🐟" "🐬" "🐳" "🐋" "🐄" "🐏" "🐀"
	      "🐃" "🐅" "🐇" "🐉" "🐎" "🐐" "🐓" "🐕" "🐖" "🐁"
	      "🐂" "🐲" "🐡" "🐊" "🐫" "🐪" "🐆" "🐈" "🐩" "🐾"])
 (":nature:" ["💩" "🔥" "✨" "🌟" "💫" "💥" "💢" "💦" "💧"])
 (":emotion:" ["💤" "💨" "👂" "👀" "👃" "👅" "👄" "👍" "👎" "👌"
	       "👊" "✊" "✌" "👋" "✋" "👐" "👆" "👇" "👉" "👈"
	       "🙌" "🙏" "☝" "👏"])
 (":sport:" ["💪" "🚶" "🏃" "💃" "👫" "👪" "👬" "👭" "💏" "💑"
	     "👯" "🙆" "🙅" "💁" "🙋" "💆" "💇" "💅" "👰" "🙎"
	     "🙍" "🙇"])
 (":cloth:" ["🎩" "👑" "👒" "👟" "👞" "👡" "👠" "👢" "👕" "👔"
	     "👚" "👗" "🎽" "👖" "👘" "👙" "💼" "👜" "👝" "👛"
	     "👓" "🎀" "🌂" "💄"])
 (":love:" ["💛" "💙" "💜" "💚" "❤" "💔" "💗" "💓" "💕" "💖"
	     "💞" "💘" "💌" "💋" "💍" "💎"])
;; "👤"
;; "👥"
;; "💬"
;; "👣"
;; "💭"
 (":plant:" ["💐" "🌸" "🌷" "🍀" "🌹" "🌻" "🌺" "🍁" "🍃" "🍂"
	     "🌿" "🌾" "🍄" "🌵" "🌴" "🌲" "🌳" "🌰" "🌱" "🌼"])

 (":astronomy:" ["🌐" "🌞" "🌝" "🌚" "🌑" "🌒" "🌓" "🌔" "🌕"
		 "🌖" "🌗" "🌘" "🌜" "🌛" "🌙" "🌍" "🌎" "🌏" "🌋"
		 "🌌" "🌠" "⭐"])
 (":astronomy:" ["☀" "⛅" "☁" "⚡" "☔" "❄" "⛄" "🌀" "🌁" "🌈"
		 "🌊"]))

		 ;; "🎍"
;; "💝"
;; "🎎"
;; "🎒"
;; "🎓"
;; "🎏"
;; "🎆"
;; "🎇"
;; "🎐"
;; "🎑"
;; "🎃"
;; "👻"
;; "🎅"
;; "🎄"
;; "🎁"
;; "🎋"
;; "🎉"
;; "🎊"
;; "🎈"
;; "🎌"
;; "🔮"
;; "🎥"
;; "📷"
;; "📹"
;; "📼"
;; "💿"
;; "📀"
;; "💽"
;; "💾"
;; "💻"
;; "📱"
;; "☎"
;; "📞"
;; "📟"
;; "📠"
;; "📡"
;; "📺"
;; "📻"
;; "🔊"
;; "🔉"
;; "🔈"
;; "🔇"
;; "🔔"
;; "🔕"
;; "📢"
;; "📣"
;; "⏳"
;; "⌛"
;; "⏰"
;; "⌚"
;; "🔓"
;; "🔒"
;; "🔏"
;; "🔐"
;; "🔑"
;; "🔎"
;; "💡"
;; "🔦"
;; "🔆"
;; "🔅"
;; "🔌"
;; "🔋"
;; "🔍"
;; "🛁"
;; "🛀"
;; "🚿"
;; "🚽"
;; "🔧"
;; "🔩"
;; "🔨"
;; "🚪"
;; "🚬"
;; "💣"
;; "🔫"
;; "🔪"
;; "💊"
;; "💉"
;; "💰"
;; "💴"
;; "💵"
;; "💷"
;; "💶"
;; "💳"
;; "💸"
;; "📲"
;; "📧"
;; "📥"
;; "📤"
;; "✉"
;; "📩"
;; "📨"
;; "📯"
;; "📫"
;; "📪"
;; "📬"
;; "📭"
;; "📮"
;; "📦"
;; "📝"
;; "📄"
;; "📃"
;; "📑"
;; "📊"
;; "📈"
;; "📉"
;; "📜"
;; "📋"
;; "📅"
;; "📆"
;; "📇"
;; "📁"
;; "📂"
;; "✂"
;; "📌"
;; "📎"
;; "✒"
;; "✏"
;; "📏"
;; "📐"
;; "📕"
;; "📗"
;; "📘"
;; "📙"
;; "📓"
;; "📔"
;; "📒"
;; "📚"
;; "📖"
;; "🔖"
;; "📛"
;; "🔬"
;; "🔭"
;; "📰"
;; "🎨"
;; "🎬"
;; "🎤"
;; "🎧"
;; "🎼"
;; "🎵"
;; "🎶"
;; "🎹"
;; "🎻"
;; "🎺"
;; "🎷"
;; "🎸"
;; "👾"
;; "🎮"
;; "🃏"
;; "🎴"
;; "🀄"
;; "🎲"
;; "🎯"
;; "🏈"
;; "🏀"
;; "⚽"
;; "⚾"
;; "🎾"
;; "🎱"
;; "🏉"
;; "🎳"
;; "⛳"
;; "🚵"
;; "🚴"
;; "🏁"
;; "🏇"
;; "🏆"
;; "🎿"
;; "🏂"
;; "🏊"
;; "🏄"
;; "🎣"
;; "☕"
;; "🍵"
;; "🍶"
;; "🍼"
;; "🍺"
;; "🍻"
;; "🍸"
;; "🍹"
;; "🍷"
;; "🍴"
;; "🍕"
;; "🍔"
;; "🍟"
;; "🍗"
;; "🍖"
;; "🍝"
;; "🍛"
;; "🍤"
;; "🍱"
;; "🍣"
;; "🍥"
;; "🍙"
;; "🍘"
;; "🍚"
;; "🍜"
;; "🍲"
;; "🍢"
;; "🍡"
;; "🍳"
;; "🍞"
;; "🍩"
;; "🍮"
;; "🍦"
;; "🍨"
;; "🍧"
;; "🎂"
;; "🍰"
;; "🍪"
;; "🍫"
;; "🍬"
;; "🍭"
;; "🍯"
;; "🍎"
;; "🍏"
;; "🍊"
;; "🍋"
;; "🍒"
;; "🍇"
;; "🍉"
;; "🍓"
;; "🍑"
;; "🍈"
;; "🍌"
;; "🍐"
;; "🍍"
;; "🍠"
;; "🍆"
;; "🍅"
;; "🌽"
;; "🏠"
;; "🏡"
;; "🏫"
;; "🏢"
;; "🏣"
;; "🏥"
;; "🏦"
;; "🏪"
;; "🏩"
;; "🏨"
;; "💒"
;; "⛪"
;; "🏬"
;; "🏤"
;; "🌇"
;; "🌆"
;; "🏯"
;; "🏰"
;; "⛺"
;; "🏭"
;; "🗼"
;; "🗾"
;; "🗻"
;; "🌄"
;; "🌅"
;; "🌃"
;; "🗽"
;; "🌉"
;; "🎠"
;; "🎡"
;; "⛲"
;; "🎢"
;; "🚢"
;; "⛵"
;; "🚤"
;; "🚣"
;; "⚓"
;; "🚀"
;; "✈"
;; "💺"
;; "🚁"
;; "🚂"
;; "🚊"
;; "🚉"
;; "🚞"
;; "🚆"
;; "🚄"
;; "🚅"
;; "🚈"
;; "🚇"
;; "🚝"
;; "🚋"
;; "🚃"
;; "🚎"
;; "🚌"
;; "🚍"
;; "🚙"
;; "🚘"
;; "🚗"
;; "🚕"
;; "🚖"
;; "🚛"
;; "🚚"
;; "🚨"
;; "🚓"
;; "🚔"
;; "🚒"
;; "🚑"
;; "🚐"
;; "🚲"
;; "🚡"
;; "🚟"
;; "🚠"
;; "🚜"
;; "💈"
;; "🚏"
;; "🎫"
;; "🚦"
;; "🚥"
;; "⚠"
;; "🚧"
;; "🔰"
;; "⛽"
;; "🏮"
;; "🎰"
;; "♨"
;; "🗿"
;; "🎪"
;; "🎭"
;; "📍"
;; "🚩"
;; "🇯"
;; "🇰"
;; "🇩"
;; "🇨"
;; "🇺"
;; "🇫"
;; "🇪"
;; "🇮"
;; "🇷"
;; "🇬"
;; "1"
;; "2"
;; "3"
;; "4"
;; "5"
;; "6"
;; "7"
;; "8"
;; "9"
;; "0"
;; "🔟"
;; "🔢"
;; "#"
;; "🔣"
;; "⬆"
;; "⬇"
;; "⬅"
;; "➡"
;; "🔠"
;; "🔡"
;; "🔤"
;; "↗"
;; "↖"
;; "↘"
;; "↙"
;; "↔"
;; "↕"
;; "🔄"
;; "◀"
;; "▶"
;; "🔼"
;; "🔽"
;; "↩"
;; "↪"
;; "ℹ"
;; "⏪"
;; "⏩"
;; "⏫"
;; "⏬"
;; "⤵"
;; "⤴"
;; "🆗"
;; "🔀"
;; "🔁"
;; "🔂"
;; "🆕"
;; "🆙"
;; "🆒"
;; "🆓"
;; "🆖"
;; "📶"
;; "🎦"
;; "🈁"
;; "🈯"
;; "🈳"
;; "🈵"
;; "🈴"
;; "🈲"
;; "🉐"
;; "🈹"
;; "🈺"
;; "🈶"
;; "🈚"
;; "🚻"
;; "🚹"
;; "🚺"
;; "🚼"
;; "🚾"
;; "🚰"
;; "🚮"
;; "🅿"
;; "♿"
;; "🚭"
;; "🈷"
;; "🈸"
;; "🈂"
;; "Ⓜ"
;; "🛂"
;; "🛄"
;; "🛅"
;; "🛃"
;; "🉑"
;; "㊙"
;; "㊗"
;; "🆑"
;; "🆘"
;; "🆔"
;; "🚫"
;; "🔞"
;; "📵"
;; "🚯"
;; "🚱"
;; "🚳"
;; "🚷"
;; "🚸"
;; "⛔"
;; "✳"
;; "❇"
;; "❎"
;; "✅"
;; "✴"
;; "💟"
;; "🆚"
;; "📳"
;; "📴"
;; "🅰"
;; "🅱"
;; "🆎"
;; "🅾"
;; "💠"
;; "➿"
;; "♻"
;; "♈"
;; "♉"
;; "♊"
;; "♋"
;; "♌"
;; "♍"
;; "♎"
;; "♏"
;; "♐"
;; "♑"
;; "♒"
;; "♓"
;; "⛎"
;; "🔯"
;; "🏧"
;; "💹"
;; "💲"
;; "💱"
;; "©"
;; "®"
;; "™"
;; "❌"
;; "‼"
;; "⁉"
;; "❗"
;; "❓"
;; "❕"
;; "❔"
;; "⭕"
;; "🔝"
;; "🔚"
;; "🔙"
;; "🔛"
;; "🔜"
;; "🔃"

		 ;; (":time:" ["🕛" "🕧" "🕐" "🕜" "🕑" "🕝" "🕒" "🕞" "🕓" "🕟"
		 ;; 	    "🕔" "🕠" "🕕" "🕖" "🕗" "🕘" "🕙" "🕚" "🕡" "🕢"
		 ;; 	    "🕣" "🕤" "🕥" "🕦"];; "✖"
;; "➕"
;; "➖"
;; "➗"
;; "♠"
;; "♥"
;; "♣"
;; "♦"
;; "💮"
;; "💯"
;; "✔"
;; "☑"
;; "🔘"
;; "🔗"
;; "➰"
;; "〰"
;; "〽"
;; "🔱"
;; "◼"
;; "◻"
;; "◾"
;; "◽"
;; "▪"
;; "▫"
;; "🔺"
;; "🔲"
;; "🔳"
;; "⚫"
;; "⚪"
;; "🔴"
;; "🔵"
;; "🔻"
;; "⬜"
;; "⬛"
;; "🔶"
;; "🔷"
;; "🔸"
;; "🔹"
;;  )

(provide 'emoji)