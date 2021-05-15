open Jest
// open JestDom

@module("./Ping.bs") external ping: () => string = "ping" 

describe("Ping!", () => {
    test("Pongs!", () => {
        open Expect
        expect(ping()) |> toEqual("Pong!")
    })
})