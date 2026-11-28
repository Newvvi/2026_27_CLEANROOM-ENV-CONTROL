# 🎛 firmware

Arduino Mega 2560 코드 · 핀은 [`hardware/pinmap.md`](../hardware/pinmap.md)

| 폴더 | 내용 |
|---|---|
| `main/` | 본 코드 |
| `test/` | 🧪 센서 · 부품 하나씩 시험하는 스케치 |

## 🧪 test/

| 폴더 | 대상 | 파트 · 담당 |
|---|---|---|
| `pm-g7/` | PM-G7 (PMS7003 계열) | 🌬 임건우 |
| `ppd42ns/` | Shinyei PPD42NS | 🌬 임건우 |
| `sdp810/` | SDP810-125Pa 차압 | 🌬 임건우 |
| `mq-135/` | MQ-135 ×3 | 🌬 임건우 |
| `fan-pwm/` | P12 Pro 25kHz PWM · 회전수 | 🌬 임건우 |
| `dht11/` | DHT11 ×6 | 🌡 허남현 |
| `ntc/` | NTC 10k (결빙 · 과열) | 🌡 허남현 |
| `peltier/` | 제습 · 재가열 키트 (MOSFET) | 🌡 허남현 |
| `bh1750/` | BH1750 (선택) | 🌡 허남현 |
| `servo/` | 서보 ×7 (문 · 플랩 · 댐퍼) | 🧩 박지원 |
| `hc-sr04/` | 초음파 (에어샤워) | 🧩 박지원 |
| `rgb-led/` | RGB LED (상태 · 미니어처 노란 조명) | 🧩 박지원 |

> 새 부품은 소문자 · 하이픈 이름으로 폴더 추가 (예: `sdp810/`)
