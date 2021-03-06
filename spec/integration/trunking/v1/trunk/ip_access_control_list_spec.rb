##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'IpAccessControlList' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .ip_access_control_lists("ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists/ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "friendly_name": "friendly_name",
          "sid": "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "trunk_sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "http://www.example.com"
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists("ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .ip_access_control_lists("ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists/ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists("ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()

    expect(actual).to eq(true)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .ip_access_control_lists.create(ip_access_control_list_sid: "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'IpAccessControlListSid' => "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "friendly_name": "friendly_name",
          "sid": "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "trunk_sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "http://www.example.com"
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists.create(ip_access_control_list_sid: "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .ip_access_control_lists.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "ip_access_control_lists": [],
          "meta": {
              "first_page_url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists?Page=0&PageSize=50",
              "key": "ip_access_control_lists",
              "next_page_url": null,
              "page": 0,
              "page_size": 0,
              "previous_page_url": null,
              "url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists"
          }
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "ip_access_control_lists": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "friendly_name": "friendly_name",
                  "sid": "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "trunk_sid": "TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "http://www.example.com"
              }
          ],
          "meta": {
              "first_page_url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists?Page=0&PageSize=50",
              "key": "ip_access_control_lists",
              "next_page_url": null,
              "page": 0,
              "page_size": 1,
              "previous_page_url": null,
              "url": "https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists"
          }
      }
      ]
    ))

    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists.list()

    expect(actual).to_not eq(nil)
  end
end