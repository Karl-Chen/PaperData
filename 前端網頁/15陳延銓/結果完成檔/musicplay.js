const player = document.getElementById("audioPlayer");
const controlPanel = document.getElementById("controlPanel");
const select = document.getElementById("songSelect");
const playBtn = controlPanel.getElementsByTagName("span")[3];
const muteBtn = controlPanel.getElementsByTagName("span")[6];
const circleBtn = controlPanel.getElementsByTagName("span")[7];
const randomBtn = controlPanel.getElementsByTagName("span")[8];
const allLoopBtn = controlPanel.getElementsByTagName("span")[9];
const input = controlPanel.getElementsByTagName("input");
const volumeRange = input[0];
const txtVol = input[3];
const progressBar = input[4];
const infoPanel = controlPanel.getElementsByTagName("div");
const songTimeText = infoPanel[1];
const songNameText = infoPanel[2];
const statusText = infoPanel[3];
var funcIndex = 0;                                             // 0是沒有打開功能，1是單曲循環，2是隨機播放，3是全部循環


function changeFunc(btn, text, clickFunc) {
    btn.innerText = text;
    btn.onclick = clickFunc;
}

function getCurrentTime() {
    songTimeText.innerText = getTimeFormat(player.currentTime) + "/" + getTimeFormat(player.duration);
    progressBar.value = player.currentTime * 10000;
}

function changeSong(n) {
    let index = select.selectedIndex;
    player.src = select.children[index + n].value;
    player.title = select.children[index + n].innerText;
    select.selectedIndex = index + n;
    select.children.selected = true;
    if (playBtn.innerText == ";")
        player.onloadeddata = playMusic;
}

function funcChangeTime(sec) {
    player.currentTime += sec;
}

function getTimeFormat(t) {
    let m = parseInt(t / 60);
    m = m < 10 ? "0" + parseInt(t / 60) : parseInt(t / 60);
    let s = parseInt(t % 60);
    s = s < 10 ? "0" + parseInt(t % 60) : parseInt(t % 60);
    return m + ":" + s;
}

function stopMusic() {
    pauseMusic();
    player.currentTime = 0;
    songNameText.innerText = "停止播放" + player.title + ".......";
}

function playMusic() {
    player.play();
    changeFunc(playBtn, ";", pauseMusic);
    setInterval(()=> getCurrentTime(), 0.1)
    songNameText.innerText = "正在播放" + player.title + "中.......";
    progressBar.max = player.duration * 10000;
    changeVolumeValue();
}

function pauseMusic() {
    player.pause();
    changeFunc(playBtn, "4", playMusic);
    songNameText.innerText = player.title + "暫停播放中.......";
}

function muteVolume() {
    controlmute("bi bi-volume-up-fill bg-warning-subtle", unmuteVolume)
}

function unmuteVolume() {
    controlmute("bi bi-volume-mute-fill bg-warning-subtle", muteVolume)
}

function controlmute(text, click) {
    muteBtn.className = text;
    player.muted = !player.muted;
    muteBtn.onclick = click;
}

//先重設單曲循環/隨機播放/全部循環的按鈕背景色
function resetAllFuncBtnColor() {
    circleBtn.className = "bg-warning-subtle";
    randomBtn.className = "bg-warning-subtle";
    allLoopBtn.className = "bg-warning-subtle";
    statusText.innerText = "正常"
}

function setCircle() {
    resetAllFuncBtnColor();
    if (funcIndex != 1) {
        circleBtn.className = "bg-info";
        funcIndex = 1;
        statusText.innerText = "單曲循環播放中"
    }
    else
        funcIndex = 0;

}

function setRandom() {
    resetAllFuncBtnColor();
    if (funcIndex != 2) {
        randomBtn.className = "bg-info";
        funcIndex = 2;
        statusText.innerText = "隨機播放中"
    }
    else
        funcIndex = 0;
}

function setAllLoop() {
    resetAllFuncBtnColor();
    if (funcIndex != 3) {
        allLoopBtn.className = "bg-info";
        funcIndex = 3;
        statusText.innerText = "全部循環播放中"
    }
    else
        funcIndex = 0;
}

function musicState() {
    if (funcIndex == 1) {
        //單體循環
        changeSong(0);
    }
    else if (funcIndex == 2) {
        //隨機播放
        let n = Math.floor(Math.random() * select.children.length);
        n -= select.selectedIndex;
        changeSong(n);
    }
    else if (funcIndex == 3 && select.length == select.selectedIndex + 1) {
        //全部循環
        changeSong(0 - select.selectedIndex);
    }
    else if (select.length == select.selectedIndex + 1) {
        stopMusic();
    }
    else {
        changeSong(1);
    }
}

function setProgress() {
    player.currentTime = parseInt(progressBar.value / 10000);
}

function changeVolumeValue() {
    txtVol.value = volumeRange.value;
    player.volume = volumeRange.value / 100;
}

function setVolume(v) {
    let val = player.volume * 100 + v;
    if (val > 100)
        val = 100;
    else if (val < 0)
        val = 0;
    volumeRange.value = val;
    changeVolumeValue();
}