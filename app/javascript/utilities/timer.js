document.addEventListener('turbolinks:load', function() {
  let timerObject = document.getElementById('timer')
  if (timerObject) { countDown(timerObject) }
})

function countDown(timerObject) {
  let completionTime = Date.parse(timerObject.dataset.completionTime.replace(/"/g, ''))
  let now = Date.now()
  let diff = completionTime - now

  if (diff <= 0) {
    document.querySelector('form').submit()
    return
  }

  let minutes = Math.floor(diff / 1000 / 60)
  let seconds = Math.floor((diff / 1000) % 60)
  
  timerObject.textContent = 'До завершения: ' + minutes + ':' + (seconds < 10 ? '0' : '') + seconds

  setTimeout(countDown, 1000, timerObject)
}
