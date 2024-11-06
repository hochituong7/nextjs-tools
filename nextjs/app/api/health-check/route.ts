import { NextRequest, NextResponse } from "next/server"

export async function GET(request: NextRequest) {
  try {
    
    return NextResponse.json(`${request.url} OK`)
  } catch (e) {
    console.log(e)
    return NextResponse.json(`${request.url} NG`, {status: 500})
  }
}
