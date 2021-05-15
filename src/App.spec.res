open Jest
open JestDom;
// open DomTestingLibrary

type renderResponse = { getByText: string => JestDom.t }
type renderType = string => renderResponse;

@module("@testing-library/svelte") external render: renderType = "render"
// @module external getByText: string => string = "@testing-library/svelte" 
@module external app: string = "./App.svelte" 

describe("App", () => {
    test("Greets pong!", () => {
        let { getByText } = render(app)

        expect(getByText("Hello Pong!!")) |> toBeInTheDocument;
    })
})
